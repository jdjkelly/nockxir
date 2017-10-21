defmodule Martian do
  def nock(a, {0, n}), do: a[n] # hoax
  def nock(_a, {1, const}), do: const
  def nock(a, {2, {b, c}}), do: n(n(a, b), n(a(c))
  def nock(a, {3, b}), do: a |> n(b) |> cell?
  def nock(a, {4, b}), do: a |> n(b) |> inc
  def nock(a, {5, b}), do: a |> n(b) |> eq
  def nock(a, {6, {b, {c, d}}}), do: a |> n({2, {0, 1}, 2, {1, {c, d}}, {1, 0}, {2, {1, {2, 3}}, {1, 0}, {4, {4, b}}}})
  def nock(a, {7, {b, c}}), do: a |> n({2, {b, {1, c}}})
  def nock(a, {8, {b, c}}), do: a |> n({7, {{{7, {{0, 1}, b}}, {0, 1}}}, c})
  def nock(a, {9, {b, c}}), do: a |> n({7, {c, {2, {{0, 1}, {0, b}}}}})
  def nock(a, {10, {{b, c}, d}}), do: a |> n({8, {c, {7, {{0, 3}, d}}}})
  def nock(a, {10, {b, c}}), do: a |> n(c)
  defp cell? x when is_number(x), do: 1
  defp cell? x when is_tuple(x), do: 0
  defp inc x when is_number(x), do: x + 1
  defp eq(x, _) when is_number(x), do: raise ArgumentError
  defp eq(x, x), do: 0
  defp eq(x, y), do: 1
end
