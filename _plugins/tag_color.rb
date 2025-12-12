module BIL
  module TagColorFilter
    # Deterministic light pastel color from string using FNV-1a hash → HSL
    # Ensures far fewer碰撞 (最多 360 种不同色相)。
    def tag_color(input)
      return 'hsl(0, 0%, 80%)' if input.nil?
      str = input.to_s
      # FNV-1a 32-bit
      hash = 0x811C9DC5
      str.each_byte do |b|
        hash ^= b
        hash = (hash * 0x01000193) & 0xFFFFFFFF
      end
      hue = hash % 360
      # 轻浅的饱和度与亮度，避免遮挡文字
      sat = 65
      light = 90
      "hsl(#{hue}, #{sat}%, #{light}%)"
    end
  end
end

Liquid::Template.register_filter(BIL::TagColorFilter)


