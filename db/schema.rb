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

ActiveRecord::Schema.define(version: 2019_09_01_100414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experience_level_hourly_rates", force: :cascade do |t|
    t.string "name"
    t.integer "hourly_rates"
  end

  create_table "expertise_details", force: :cascade do |t|
    t.string "name"
    t.bigint "expertise_id"
    t.index ["expertise_id"], name: "index_expertise_details_on_expertise_id"
  end

  create_table "expertises", force: :cascade do |t|
    t.string "name"
  end

  create_table "freelancer_educations", force: :cascade do |t|
    t.bigint "freelancer_id"
    t.string "tietiary"
    t.index ["freelancer_id"], name: "index_freelancer_educations_on_freelancer_id"
  end

  create_table "freelancer_expertises", force: :cascade do |t|
    t.bigint "expertise_detail_id"
    t.bigint "freelancer_id"
    t.index ["expertise_detail_id"], name: "index_freelancer_expertises_on_expertise_detail_id"
    t.index ["freelancer_id"], name: "index_freelancer_expertises_on_freelancer_id"
  end

  create_table "freelancers", force: :cascade do |t|
    t.string "professional_title"
    t.string "professional_overview"
    t.date "start_work_date"
    t.bigint "job_category_id"
    t.bigint "experience_level_hourly_rate_id"
    t.bigint "payment_type_id"
    t.bigint "country_id"
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.date "reset_password_sent_at"
    t.date "remember_created_at"
    t.float "hourly_rate"
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.string "highest_education"
    t.index ["country_id"], name: "index_freelancers_on_country_id"
    t.index ["experience_level_hourly_rate_id"], name: "index_freelancers_on_experience_level_hourly_rate_id"
    t.index ["job_category_id"], name: "index_freelancers_on_job_category_id"
    t.index ["payment_type_id"], name: "index_freelancers_on_payment_type_id"
  end

  create_table "hirers", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.date "reset_password_sent_at"
    t.date "remember_created_at"
    t.date "created_at"
    t.date "updated_at"
    t.string "first_name"
    t.string "last_name"
    t.string "country"
  end

  create_table "job_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "job_match_freelancers", force: :cascade do |t|
    t.bigint "job_match_id"
    t.bigint "freelancer_id"
    t.float "gross_amount"
    t.float "service_fee"
    t.float "net_amount"
    t.index ["freelancer_id"], name: "index_job_match_freelancers_on_freelancer_id"
    t.index ["job_match_id"], name: "index_job_match_freelancers_on_job_match_id"
  end

  create_table "job_matches", force: :cascade do |t|
    t.bigint "job_posting_id"
    t.string "requester_type"
    t.integer "approval_status"
    t.bigint "freelancer_id"
    t.bigint "hirer_id"
    t.float "gross_amount"
    t.float "service_fee"
    t.float "net_amount"
    t.index ["freelancer_id"], name: "index_job_matches_on_freelancer_id"
    t.index ["hirer_id"], name: "index_job_matches_on_hirer_id"
    t.index ["job_posting_id"], name: "index_job_matches_on_job_posting_id"
  end

  create_table "job_posting_expertises", force: :cascade do |t|
    t.bigint "expertise_detail_id"
    t.bigint "job_posting_id"
    t.index ["expertise_detail_id"], name: "index_job_posting_expertises_on_expertise_detail_id"
    t.index ["job_posting_id"], name: "index_job_posting_expertises_on_job_posting_id"
  end

  create_table "job_postings", force: :cascade do |t|
    t.string "job_post_title"
    t.string "job_description"
    t.date "project_start_date"
    t.bigint "post_visibility_id"
    t.bigint "payment_type_id"
    t.bigint "project_timeline_id"
    t.bigint "project_type_id"
    t.bigint "job_category_id"
    t.bigint "no_of_freelancer_id"
    t.bigint "experience_level_hourly_rate_id"
    t.bigint "hirer_id"
    t.float "fixed_price"
    t.index ["experience_level_hourly_rate_id"], name: "index_job_postings_on_experience_level_hourly_rate_id"
    t.index ["hirer_id"], name: "index_job_postings_on_hirer_id"
    t.index ["job_category_id"], name: "index_job_postings_on_job_category_id"
    t.index ["no_of_freelancer_id"], name: "index_job_postings_on_no_of_freelancer_id"
    t.index ["payment_type_id"], name: "index_job_postings_on_payment_type_id"
    t.index ["post_visibility_id"], name: "index_job_postings_on_post_visibility_id"
    t.index ["project_timeline_id"], name: "index_job_postings_on_project_timeline_id"
    t.index ["project_type_id"], name: "index_job_postings_on_project_type_id"
  end

  create_table "no_of_freelancers", force: :cascade do |t|
    t.string "name"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "post_visibilities", force: :cascade do |t|
    t.string "name"
  end

  create_table "project_timelines", force: :cascade do |t|
    t.string "name"
  end

  create_table "project_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "save_freelancer_buckets", force: :cascade do |t|
    t.bigint "freelancer_id"
    t.bigint "hirer_id"
    t.index ["freelancer_id"], name: "index_save_freelancer_buckets_on_freelancer_id"
    t.index ["hirer_id"], name: "index_save_freelancer_buckets_on_hirer_id"
  end

  create_table "save_job_buckets", force: :cascade do |t|
    t.bigint "freelancer_id"
    t.bigint "job_posting_id"
    t.index ["freelancer_id"], name: "index_save_job_buckets_on_freelancer_id"
    t.index ["job_posting_id"], name: "index_save_job_buckets_on_job_posting_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.date "reset_password_sent_at"
    t.date "remember_created_at"
    t.date "created_at"
    t.date "updated_at"
    t.string "first_name"
    t.string "last_name"
    t.string "country_select"
  end

end
