defmodule SurfaceHeroicons do
  @moduledoc """
  Documentation for `Heroicons`.
  """

  @doc """
  Convert source SVG files into Surface components

  ## Examples

      iex> Heroicons.convert()
      :ok

  """
  def convert() do
    Enum.each(["outline", "solid"], &loop_directory/1)
  end

  defp loop_directory(folder) do
    path = "./lib/heroicons/#{folder}/"
    namespace = "Heroicons.#{String.capitalize(folder)}."

    path
    |> File.ls!()
    |> Enum.each(&create_component(folder, path, namespace, &1))
  end

  defp create_component(folder, path, namespace, filename) do
    svg_filepath = Path.join(path, filename)
    component_filepath = Path.join(path, component_filename(filename))
    docs = "#{folder}/#{filename}"

    svg_content =
      File.read!(svg_filepath)
      |> String.trim()
      |> String.replace(~r/<svg /, "<svg class={{ @class }} ")

    component_content = (namespace <> module_name(filename)) |> build_component(docs, svg_content)
    File.write!(component_filepath, component_content)
  end

  defp component_filename(current_filename) do
    current_filename
    |> String.split("-")
    |> Enum.join("_")
    |> Path.basename(".svg")
    |> Kernel.<>(".ex")
  end

  defp module_name(current_filename) do
    current_filename
    |> Path.basename(".svg")
    |> String.split("-")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join("")
    |> Kernel.<>("Icon")
  end

  defp build_component(module_name, docs, svg) do
    """
    defmodule #{module_name} do
      @moduledoc "#{docs}"
      use Surface.Component

      @doc "css class"
      prop(class, :css_class, default: "w-5 h-5")

      def render(assigns) do
        ~H\"\"\"
        #{svg}
        \"\"\"
      end
    end
    """
  end
end
