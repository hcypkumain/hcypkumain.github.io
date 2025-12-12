require 'jekyll'

module BIL
  # Generates a page for each project in site.data.projects
  class ProjectPagesGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      projects = site.data['projects'] || []
      projects.each do |project|
        title = project['title']
        next if title.nil? || title.strip.empty?

        slug = Jekyll::Utils.slugify(title)
        # If a directory exists for this project, assume file-backed pages will live there → skip generating
        dir_path = File.join(site.source, 'project', slug)
        next if Dir.exist?(dir_path)

        # Additional guards: skip if a file-backed page exists or the target URL already exists
        has_file_backed_page = File.exist?(File.join(dir_path, 'index.md')) || File.exist?(File.join(dir_path, 'index.html'))
        target_url = "/project/#{slug}/"
        exists_in_pages = site.pages.any? { |p| p.url == target_url }
        next if has_file_backed_page || exists_in_pages

        page = ProjectPage.new(site, site.source, File.join('project', slug), project)
        site.pages << page
      end
    end
  end

  class ProjectPage < Jekyll::Page
    def initialize(site, base, dir, project)
      @site = site
      @base = base
      @dir  = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'project.html')

      # Expose project data to the layout via page.project
      self.data['title'] = project['title']
      self.data['project'] = project
      self.data['layout'] = 'project'
      # Useful canonical/permalink
      self.data['permalink'] = "/#{@dir}/"
    end
  end
end


