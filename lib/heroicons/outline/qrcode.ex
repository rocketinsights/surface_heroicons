defmodule Heroicons.Outline.QrcodeIcon do
  @moduledoc "outline/qrcode.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 4V5M18 16H20M14 16H12V20M12 9V12M12 12H12.01M12 12H16.01M16 20H20M4 12H8M20 12H20.01M5 8H7C7.55228 8 8 7.55228 8 7V5C8 4.44772 7.55228 4 7 4H5C4.44772 4 4 4.44772 4 5V7C4 7.55228 4.44772 8 5 8ZM17 8H19C19.5523 8 20 7.55228 20 7V5C20 4.44772 19.5523 4 19 4H17C16.4477 4 16 4.44772 16 5V7C16 7.55228 16.4477 8 17 8ZM5 20H7C7.55228 20 8 19.5523 8 19V17C8 16.4477 7.55228 16 7 16H5C4.44772 16 4 16.4477 4 17V19C4 19.5523 4.44772 20 5 20Z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
