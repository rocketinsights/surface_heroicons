defmodule Heroicons.Outline.ArrowSmUpIcon do
  @moduledoc "outline/arrow-sm-up.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  def render(assigns) do
    ~F"""
    <svg class={@class} width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 11L12 6M12 6L17 11M12 6V18" stroke="#111827" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
