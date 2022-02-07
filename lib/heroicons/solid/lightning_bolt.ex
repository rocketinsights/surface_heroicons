defmodule Heroicons.Solid.LightningBoltIcon do
  @moduledoc "solid/lightning-bolt.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill"
  prop fill, :string, default: "currentColor"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} viewBox="0 0 20 20" fill={@fill} aria-hidden="true">
    <path fill-rule="evenodd" d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z" clip-rule="evenodd"/>
    </svg>
    """
  end
end
