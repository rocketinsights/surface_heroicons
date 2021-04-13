defmodule Heroicons.Solid.FolderAddIcon do
  @moduledoc "solid/folder-add.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 6C2 4.89543 2.89543 4 4 4H9L11 6H16C17.1046 6 18 6.89543 18 8V14C18 15.1046 17.1046 16 16 16H4C2.89543 16 2 15.1046 2 14V6Z" fill="#374151"/>
    <path d="M8 11H12M10 9V13" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
