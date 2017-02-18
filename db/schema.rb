# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170218142200) do

  create_table "prospects", force: :cascade do |t|
    t.string   "siren"
    t.string   "siret"
    t.string   "prosp_type"
    t.string   "denomination"
    t.string   "sigle"
    t.string   "nom_commercial"
    t.string   "enseigne"
    t.string   "adresse1"
    t.string   "adresse2"
    t.string   "adresse3"
    t.string   "adresse4"
    t.string   "code_postal"
    t.string   "commune"
    t.string   "ape_etablissement"
    t.string   "libelle_ape"
    t.string   "ape_entreprise"
    t.string   "immat_etablissement"
    t.string   "immat_entreprise"
    t.string   "forme_juridique"
    t.string   "fonction_dirigeant"
    t.string   "civilite_dirigeant"
    t.string   "prenom_dirigeant"
    t.string   "nom_dirigeant"
    t.string   "nom_representant_dirigeant"
    t.string   "type_dirigeant"
    t.string   "date_naissance_dirigeant"
    t.date     "date_evenement"
    t.string   "dernier_evenement"
    t.date     "date_jugement"
    t.string   "dernier_jugement"
    t.string   "radiation"
    t.integer  "capital"
    t.string   "devise_capital"
    t.string   "type_capital"
    t.date     "date_cloture"
    t.string   "unite_monetaire"
    t.integer  "chiffre_affaire"
    t.integer  "resultat_net"
    t.integer  "chiffre_affaire_export"
    t.integer  "excedent_brut_exploit"
    t.string   "tranche_effectif_etab"
    t.string   "tranche_effectif_entreprise"
    t.string   "telephone"
    t.string   "fax"
    t.text     "url"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
