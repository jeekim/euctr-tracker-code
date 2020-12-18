--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.7
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: euctr; Type: TABLE; Schema: public; Owner: warehouse
--

CREATE TABLE euctr (
    eudract_number_with_country character varying(255) NOT NULL,
    date_of_competent_authority_decision date,
    trial_dose_response text,
    trial_others text,
    trial_the_trial_involves_single_site_in_the_member_state_concer text,
    subject_women_of_childbearing_potential_not_using_contraception text,
    clinical_trial_type text,
    trial_is_part_of_a_paediatric_investigation_plan text,
    trial_open text,
    trial_cross_over text,
    placebos jsonb,
    member_state_concerned text,
    trial_primary_end_point_s text,
    trial_trial_being_conducted_both_within_and_outside_the_eea text,
    trial_therapy text,
    trial_single_blind text,
    trial_secondary_objectives_of_the_trial text,
    end_of_trial_status text,
    ethics_committee_opinion_of_the_trial_application text,
    trial_the_trial_involves_multiple_sites_in_the_member_state_con text,
    meta_updated timestamp with time zone DEFAULT now() NOT NULL,
    trial_trial_contains_a_sub_study text,
    trial_prophylaxis text,
    meta_created timestamp with time zone DEFAULT now() NOT NULL,
    trial_therapeutic_use_phase_iv text,
    national_competent_authority text,
    subject_pregnant_women text,
    eudract_number text,
    subject_male text,
    meta_source text,
    trial_in_the_member_state_concerned_years integer,
    trial_safety text,
    trial_therapeutic_exploratory_phase_ii text,
    trial_diagnosis text,
    trial_human_pharmacology_phase_i text,
    trial_bioequivalence_study text,
    subject_healthy_volunteers text,
    trial_the_trial_involves_multiple_member_states text,
    trial_efficacy text,
    trial_principal_exclusion_criteria text,
    meta_id uuid,
    trial_medical_condition_s_being_investigated text,
    trial_pharmacogenomic text,
    trial_bioequivalence text,
    trial_pharmacodynamic text,
    sponsors jsonb,
    sponsor_s_protocol_code_number text,
    trial_first_administration_to_humans text,
    trial_pharmacogenetic text,
    trial_therapeutic_confirmatory_phase_iii text,
    subject_in_the_member_state integer,
    date_on_which_this_record_was_first_entered_in_the_eudract_data date,
    subject_others text,
    trial_controlled text,
    trial_trial_being_conducted_completely_outside_of_the_eea text,
    trial_placebo text,
    subject_subjects_incapable_of_giving_consent_personally text,
    subject_in_the_eea integer,
    subject_women_of_childbearing_potential_using_contraception text,
    trial_principal_inclusion_criteria text,
    imps jsonb,
    meds jsonb,
    population jsonb,
    trial_parallel_group text,
    trial_pharmacoeconomic text,
    trial_status text,
    trial_condition_being_studied_is_a_rare_disease text,
    subject_in_the_whole_clinical_trial integer,
    trial_other_medicinal_product_s text,
    competent_authority_decision text,
    subject_female text,
    trial_pharmacokinetic text,
    full_title_of_the_trial text,
    trial_in_all_countries_concerned_by_the_trial_years integer,
    subject_nursing_women text,
    trial_double_blind text,
    -- trial_double_blind text,
    trial_trial_has_a_data_monitoring_committee text,
    subject_emergency_situation text,
    trial_randomised text,
    subject_specific_vulnerable_populations text,
    subject_patients text,
    trial_main_objective_of_the_trial text,
    date_of_ethics_committee_opinion date,
    trial_in_all_countries_concerned_by_the_trial_months integer,
    trial_definition_of_the_end_of_the_trial_and_justification_wher text,
    trial_in_the_member_state_concerned_months integer,
    name_or_abbreviated_title_of_the_trial_where_available text,
    subject_plans_for_treatment_or_care_after_the_subject_has_ended text,
    subject_details_of_subjects_incapable_of_giving_consent text,
    trial_version text,
    trial_level text,
    trial_classification_code text,
    isrctn_international_standard_randomised_controlled_trial_numbe text,
    trial_comparator_description text,
    trial_number_of_sites_anticipated_in_the_eea integer,
    date_of_the_global_end_of_the_trial date,
    trial_number_of_sites_anticipated_in_member_state_concerned integer,
    trial_term text,
    trial_other_trial_design_description text,
    trial_other_trial_type_description text,
    trial_other_scope_of_the_trial_description text,
    trial_full_title_date_and_version_of_each_sub_study_and_their_r text,
    trial_therapeutic_area text,
    trial_system_organ_class text,
    trial_number_of_treatment_arms_in_the_trial integer,
    trial_in_the_member_state_concerned_days integer,
    subject_childs integer,
    subject_details_of_other_specific_vulnerable_populations text,
    trial_in_all_countries_concerned_by_the_trial_days integer,
    subject_elderly integer,
    us_nct_clinicaltrials_gov_registry_number text,
    trial_medical_condition_in_easily_understood_language text,
    title_of_the_trial_for_lay_people_in_easily_understood_i_e_non_ text,
    subject_adults integer,
    trial_secondary_end_point_s text,
    trial_if_e_8_6_1_or_e_8_6_2_are_yes_specify_the_regions_in_whic text,
    trial_timepoint_s_of_evaluation_of_this_end_point text,
    ethics_committee_opinion_reason_s_for_unfavourable_opinion text,
    ema_decision_number_of_paediatric_investigation_plan text,
    trial_specify_the_countries_outside_of_the_eea_in_which_trial_s text,
    who_universal_trial_reference_number_utrn text,
    other_identifiers text,
    trial_results text,
    trial_other text,
    trial_results_url text
);


ALTER TABLE euctr OWNER TO euctr;

--
-- Name: euctr_meta_id_unique; Type: CONSTRAINT; Schema: public; Owner: warehouse
--

ALTER TABLE ONLY euctr
    ADD CONSTRAINT euctr_meta_id_unique UNIQUE (meta_id);


--
-- Name: euctr_pkey; Type: CONSTRAINT; Schema: public; Owner: warehouse
--

ALTER TABLE ONLY euctr
    ADD CONSTRAINT euctr_pkey PRIMARY KEY (eudract_number_with_country);


--
-- Name: idx_euract_number; Type: INDEX; Schema: public; Owner: warehouse
--

CREATE INDEX idx_euract_number ON euctr USING btree (eudract_number);


--
-- Name: ix_euctr_86a28cd2542cd0c4; Type: INDEX; Schema: public; Owner: warehouse
--

CREATE INDEX ix_euctr_86a28cd2542cd0c4 ON euctr USING btree (eudract_number_with_country);


--
-- Name: euctr_set_meta_updated; Type: TRIGGER; Schema: public; Owner: warehouse
--

CREATE OR REPLACE FUNCTION public.set_meta_updated()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
                    BEGIN
                      NEW.meta_updated := now();
                      RETURN NEW;
                    END;
                    $function$;

CREATE TRIGGER euctr_set_meta_updated BEFORE UPDATE ON euctr FOR EACH ROW EXECUTE PROCEDURE set_meta_updated();


--
-- Name: euctr; Type: ACL; Schema: public; Owner: warehouse
--

REVOKE ALL ON TABLE euctr FROM PUBLIC;
REVOKE ALL ON TABLE euctr FROM euctr;
GRANT ALL ON TABLE euctr TO euctr;
--GRANT SELECT ON TABLE euctr TO opentrials_readonly;


--
-- PostgreSQL database dump complete
--
