class CreateProspects < ActiveRecord::Migration[5.0]
  def change
    create_table :prospects do |t|
      t.string :siren
      t.string :siret
      t.string :type
      t.string :denomination
      t.string :sigle
      t.string :nom_commercial
      t.string :enseigne
      t.string :adresse1
      t.string :adresse2
      t.string :adresse3
      t.string :adresse4
      t.string :code_postal
      t.string :commune
      t.string :ape_etablissement
      t.string :libelle_ape
      t.string :ape_entreprise
      t.string :immat_etablissement
      t.string :immat_entreprise
      t.string :forme_juridique
      t.string :fonction_dirigeant
      t.string :civilite_dirigeant
      t.string :prenom_dirigeant
      t.string :nom_dirigeant
      t.string :nom_representant_dirigeant
      t.string :type_dirigeant
      t.string :date_naissance_dirigeant
      t.date :date_evenement
      t.string :dernier_evenement
      t.date :date_jugement
      t.string :dernier_jugement
      t.string :radiation
      t.integer :capital
      t.string :devise_capital
      t.string :type_capital
      t.date :date_cloture
      t.string :unite_monetaire
      t.integer :chiffre_affaire
      t.integer :resultat_net
      t.integer :chiffre_affaire_export
      t.integer :excedent_brut_exploit
      t.string :tranche_effectif_etab
      t.string :tranche_effectif_entreprise
      t.string :telephone
      t.string :fax
      t.text :url

      t.timestamps
    end
  end
end
