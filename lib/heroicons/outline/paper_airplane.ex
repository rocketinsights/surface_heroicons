defmodule Heroicons.Outline.PaperAirplaneIcon do
  @moduledoc "outline/paper-airplane.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 19L21 21L12 3L3 21L12 19ZM12 19V11" stroke="#374151" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
