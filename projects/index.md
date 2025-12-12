---
title: Projects
title_key: projects_title
nav:
  order: 2
---

# <span data-i18n="projects_title">Projects and Datasets</span>

<span data-i18n="projects_intro_1">Our laboratory is deeply engaged in cutting-edge fields such as brain-inspired computing, neuromorphic computing, and spiking neural networks. We are committed to unraveling the mysteries of the brain's information processing and constructing computational paradigms that are closer to biological intelligence.</span>

<span data-i18n="projects_intro_2">Based on in-depth analysis of neurodynamics, we break through the limitations of traditional artificial neural networks, develop low-power consumption and highly parallel spiking neural networks, and explore innovative applications of spike coding mechanisms in real-time perception and autonomous learning.</span>

<span data-i18n="projects_intro_3">Our team integrates neuroscience, computer science, and microelectronics technology, and has achieved a series of results in areas such as brain-inspired cognitive models and dynamic environment adaptation algorithms. These efforts provide core technical support for the new generation of artificial intelligence, edge computing, and brain-computer interfaces, driving the evolution of intelligent systems toward higher efficiency, robustness, and human-like characteristics.</span>

{% include project-tags.html %}

{% for project in site.data.projects %}
    {% include project-card.html project=project %}
{% endfor %}


{% capture content %}
For a list of recent research ouputs, visit our [publications page](/papers/).
{% endcapture %}

{% include more-info.html 
  content=content 
  icon="fa-solid fa-file-lines" 
  color="#0A66C2" 
%}