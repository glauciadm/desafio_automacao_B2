Given("abriu a tarefa {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("inserir o marcador {string}") do |marcador|
    @tarefa.inserirMarcador(marcador)
  end
  
  When("aplicar marcador") do
    @tarefa.aplicarMarcador
  end
  
  Then("o marcador {string} será exibido na sessão Marcadores") do |marcador|
    #('.table.table-bordered.table-condensed tbody tr')
    expect(page.has_text?(marcador)).to eq true
  end