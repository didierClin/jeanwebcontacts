class ProspectsController < ApplicationController
  attr_accessor :siren, :siret, :prosp_type, :denomination, :sigle, :nom_commercial, :enseigne, :adresse1, :adresse2, :adresse3, :adresse4, :code_postal, :commune, :ape_etablissement, :libelle_ape, :ape_entreprise, :immat_etablissement, :immat_entreprise, :forme_juridique, :fonction_dirigeant, :civilite_dirigeant, :prenom_dirigeant, :nom_dirigeant, :nom_representant_dirigeant, :type_dirigeant,
    :date_naissance_dirigeant, :date_evenement, :dernier_evenement, :date_jugement, :dernier_jugement, :radiation, :capital, :devise_capital, :type_capital, :date_cloture, :unite_monetaire, :chiffre_affaire, :resultat_net, :chiffre_affaire_export, :excedent_brut_exploit, :tranche_effectif_etab, :tranche_effectif_entreprise, :telephone, :fax, :url

  def index
    @prospects = Prospect.all.page params[:page]
    respond_to do |format|
      format.html
      format.csv { render text: @prospects.to_csv }
      format.xls
    end
  end

  def show
  end

  def import
    Prospect.import(params[:file])
    redirect_to root_url, notice: "Prospects data imported!"
  end
end
