defmodule Heroicons.Solid.ChatAltIcon do
  @moduledoc "solid/chat-alt.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 5V13C18 14.1046 17.1046 15 16 15H11L6 19V15H4C2.89543 15 2 14.1046 2 13V5C2 3.89543 2.89543 3 4 3H16C17.1046 3 18 3.89543 18 5ZM7 8H5V10H7V8ZM9 8H11V10H9V8ZM15 8H13V10H15V8Z" fill="#4B5563"/>
    </svg>
    """
  end
end
