# DateGen

![alt-text](date.jpeg)

## Descrição
Gera datas aleatórias.

## Uso
 > date_range(end_year, begin_year)
 
```
 end_year = ano final
 begin_year = ano inicial
```
 
```Elixir
   iex> DateGen.date_range(2050, 1970)
   [  
    "2009-7-28", "2017-2-4", "2015-9-28", "2030-9-12", "2045-8-12", 
    "1980-4-22", "2028-9-19", "2037-11-18", "2046-12-30", "2021-8-15"
  ]
```

## Instalação

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `date_gen` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:date_gen, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/date_gen](https://hexdocs.pm/date_gen).
