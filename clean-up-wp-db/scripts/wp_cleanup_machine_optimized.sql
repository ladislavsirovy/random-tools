-- ============================================================================
-- OPTIMIZED WordPress Database Cleanup Script
-- This version uses JOIN instead of NOT IN for better performance
-- ============================================================================

-- ============================================================================
-- SECTION 1: wp_X_relevanssi_log - Delete entries older than 30 days
-- ============================================================================

DELETE FROM wp_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_2_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_3_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_6_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_7_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_8_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_9_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_10_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_11_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_12_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_13_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_14_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_15_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_16_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_17_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_18_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_19_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_20_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_21_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_22_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_23_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_24_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_25_relevanssi_log WHERE time < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- ============================================================================
-- SECTION 2: wp_X_gf_entry - Delete entries older than 90 days
-- ============================================================================

DELETE FROM wp_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_2_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_3_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_6_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_7_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_8_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_9_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_10_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_11_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_12_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_13_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_14_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_15_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_16_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_17_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_18_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_19_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_20_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_21_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_22_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_23_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_24_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);
DELETE FROM wp_25_gf_entry WHERE date_created < DATE_SUB(CURDATE(), INTERVAL 90 DAY);

-- ============================================================================
-- SECTION 3: wp_X_gf_entry_meta - Delete orphaned entries (OPTIMIZED)
-- Using LEFT JOIN instead of NOT IN for better performance
-- ============================================================================

DELETE m FROM wp_gf_entry_meta m LEFT JOIN wp_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_2_gf_entry_meta m LEFT JOIN wp_2_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_3_gf_entry_meta m LEFT JOIN wp_3_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_6_gf_entry_meta m LEFT JOIN wp_6_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_7_gf_entry_meta m LEFT JOIN wp_7_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_8_gf_entry_meta m LEFT JOIN wp_8_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_9_gf_entry_meta m LEFT JOIN wp_9_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_10_gf_entry_meta m LEFT JOIN wp_10_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_11_gf_entry_meta m LEFT JOIN wp_11_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_12_gf_entry_meta m LEFT JOIN wp_12_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_13_gf_entry_meta m LEFT JOIN wp_13_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_14_gf_entry_meta m LEFT JOIN wp_14_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_15_gf_entry_meta m LEFT JOIN wp_15_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_16_gf_entry_meta m LEFT JOIN wp_16_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_17_gf_entry_meta m LEFT JOIN wp_17_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_18_gf_entry_meta m LEFT JOIN wp_18_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_19_gf_entry_meta m LEFT JOIN wp_19_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_20_gf_entry_meta m LEFT JOIN wp_20_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_21_gf_entry_meta m LEFT JOIN wp_21_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_22_gf_entry_meta m LEFT JOIN wp_22_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_23_gf_entry_meta m LEFT JOIN wp_23_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_24_gf_entry_meta m LEFT JOIN wp_24_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;
DELETE m FROM wp_25_gf_entry_meta m LEFT JOIN wp_25_gf_entry e ON m.entry_id = e.id WHERE e.id IS NULL;

-- ============================================================================
-- SECTION 4: wp_X_gf_entry_notes - Delete orphaned entries (OPTIMIZED)
-- ============================================================================

DELETE n FROM wp_gf_entry_notes n LEFT JOIN wp_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_2_gf_entry_notes n LEFT JOIN wp_2_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_3_gf_entry_notes n LEFT JOIN wp_3_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_6_gf_entry_notes n LEFT JOIN wp_6_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_7_gf_entry_notes n LEFT JOIN wp_7_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_8_gf_entry_notes n LEFT JOIN wp_8_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_9_gf_entry_notes n LEFT JOIN wp_9_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_10_gf_entry_notes n LEFT JOIN wp_10_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_11_gf_entry_notes n LEFT JOIN wp_11_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_12_gf_entry_notes n LEFT JOIN wp_12_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_13_gf_entry_notes n LEFT JOIN wp_13_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_14_gf_entry_notes n LEFT JOIN wp_14_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_15_gf_entry_notes n LEFT JOIN wp_15_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_16_gf_entry_notes n LEFT JOIN wp_16_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_17_gf_entry_notes n LEFT JOIN wp_17_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_18_gf_entry_notes n LEFT JOIN wp_18_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_19_gf_entry_notes n LEFT JOIN wp_19_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_20_gf_entry_notes n LEFT JOIN wp_20_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_21_gf_entry_notes n LEFT JOIN wp_21_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_22_gf_entry_notes n LEFT JOIN wp_22_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_23_gf_entry_notes n LEFT JOIN wp_23_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_24_gf_entry_notes n LEFT JOIN wp_24_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;
DELETE n FROM wp_25_gf_entry_notes n LEFT JOIN wp_25_gf_entry e ON n.entry_id = e.id WHERE e.id IS NULL;

-- ============================================================================
-- SECTION 5: wp_X_cmplz_statistics - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_cmplz_statistics;
TRUNCATE TABLE wp_2_cmplz_statistics;
TRUNCATE TABLE wp_3_cmplz_statistics;
TRUNCATE TABLE wp_6_cmplz_statistics;
TRUNCATE TABLE wp_7_cmplz_statistics;
TRUNCATE TABLE wp_8_cmplz_statistics;
TRUNCATE TABLE wp_9_cmplz_statistics;
TRUNCATE TABLE wp_10_cmplz_statistics;
TRUNCATE TABLE wp_11_cmplz_statistics;
TRUNCATE TABLE wp_12_cmplz_statistics;
TRUNCATE TABLE wp_13_cmplz_statistics;
TRUNCATE TABLE wp_14_cmplz_statistics;
TRUNCATE TABLE wp_15_cmplz_statistics;
TRUNCATE TABLE wp_16_cmplz_statistics;
TRUNCATE TABLE wp_17_cmplz_statistics;
TRUNCATE TABLE wp_18_cmplz_statistics;
TRUNCATE TABLE wp_19_cmplz_statistics;
TRUNCATE TABLE wp_20_cmplz_statistics;
TRUNCATE TABLE wp_21_cmplz_statistics;
TRUNCATE TABLE wp_22_cmplz_statistics;
TRUNCATE TABLE wp_23_cmplz_statistics;
TRUNCATE TABLE wp_24_cmplz_statistics;
TRUNCATE TABLE wp_25_cmplz_statistics;

-- ============================================================================
-- SECTION 6: wp_X_posts - Delete revisions older than 30 days
-- ============================================================================

DELETE FROM wp_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_2_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_3_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_6_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_7_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_8_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_9_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_10_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_11_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_12_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_13_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_14_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_15_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_16_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_17_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_18_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_19_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_20_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_21_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_22_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_23_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_24_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_25_posts WHERE post_type = 'revision' AND post_modified < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- ============================================================================
-- SECTION 7: wp_X_postmeta - Delete orphaned entries (OPTIMIZED)
-- ============================================================================

DELETE m FROM wp_postmeta m LEFT JOIN wp_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_2_postmeta m LEFT JOIN wp_2_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_3_postmeta m LEFT JOIN wp_3_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_6_postmeta m LEFT JOIN wp_6_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_7_postmeta m LEFT JOIN wp_7_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_8_postmeta m LEFT JOIN wp_8_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_9_postmeta m LEFT JOIN wp_9_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_10_postmeta m LEFT JOIN wp_10_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_11_postmeta m LEFT JOIN wp_11_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_12_postmeta m LEFT JOIN wp_12_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_13_postmeta m LEFT JOIN wp_13_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_14_postmeta m LEFT JOIN wp_14_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_15_postmeta m LEFT JOIN wp_15_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_16_postmeta m LEFT JOIN wp_16_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_17_postmeta m LEFT JOIN wp_17_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_18_postmeta m LEFT JOIN wp_18_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_19_postmeta m LEFT JOIN wp_19_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_20_postmeta m LEFT JOIN wp_20_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_21_postmeta m LEFT JOIN wp_21_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_22_postmeta m LEFT JOIN wp_22_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_23_postmeta m LEFT JOIN wp_23_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_24_postmeta m LEFT JOIN wp_24_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;
DELETE m FROM wp_25_postmeta m LEFT JOIN wp_25_posts p ON m.post_id = p.ID WHERE p.ID IS NULL;

-- ============================================================================
-- SECTION 8: wp_X_redirection_logs - Delete entries older than 30 days
-- ============================================================================

DELETE FROM wp_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_2_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_3_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_6_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_7_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_8_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_9_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_10_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_11_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_12_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_13_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_14_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_15_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_16_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_17_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_18_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_19_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_20_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_21_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_22_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_23_redirection_logs WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- ============================================================================
-- SECTION 9: wp_X_gf_form_view - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_gf_form_view;
TRUNCATE TABLE wp_2_gf_form_view;
TRUNCATE TABLE wp_3_gf_form_view;
TRUNCATE TABLE wp_6_gf_form_view;
TRUNCATE TABLE wp_7_gf_form_view;
TRUNCATE TABLE wp_8_gf_form_view;
TRUNCATE TABLE wp_9_gf_form_view;
TRUNCATE TABLE wp_10_gf_form_view;
TRUNCATE TABLE wp_11_gf_form_view;
TRUNCATE TABLE wp_12_gf_form_view;
TRUNCATE TABLE wp_13_gf_form_view;
TRUNCATE TABLE wp_14_gf_form_view;
TRUNCATE TABLE wp_15_gf_form_view;
TRUNCATE TABLE wp_16_gf_form_view;
TRUNCATE TABLE wp_17_gf_form_view;
TRUNCATE TABLE wp_18_gf_form_view;
TRUNCATE TABLE wp_19_gf_form_view;
TRUNCATE TABLE wp_20_gf_form_view;
TRUNCATE TABLE wp_21_gf_form_view;
TRUNCATE TABLE wp_22_gf_form_view;
TRUNCATE TABLE wp_23_gf_form_view;
TRUNCATE TABLE wp_24_gf_form_view;
TRUNCATE TABLE wp_25_gf_form_view;

-- ============================================================================
-- SECTION 10: wp_X_actionscheduler_claims - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_actionscheduler_claims;
TRUNCATE TABLE wp_2_actionscheduler_claims;
TRUNCATE TABLE wp_3_actionscheduler_claims;
TRUNCATE TABLE wp_6_actionscheduler_claims;
TRUNCATE TABLE wp_7_actionscheduler_claims;
TRUNCATE TABLE wp_8_actionscheduler_claims;
TRUNCATE TABLE wp_9_actionscheduler_claims;
TRUNCATE TABLE wp_10_actionscheduler_claims;
TRUNCATE TABLE wp_11_actionscheduler_claims;
TRUNCATE TABLE wp_12_actionscheduler_claims;
TRUNCATE TABLE wp_13_actionscheduler_claims;
TRUNCATE TABLE wp_14_actionscheduler_claims;
TRUNCATE TABLE wp_15_actionscheduler_claims;
TRUNCATE TABLE wp_16_actionscheduler_claims;
TRUNCATE TABLE wp_17_actionscheduler_claims;
TRUNCATE TABLE wp_18_actionscheduler_claims;
TRUNCATE TABLE wp_19_actionscheduler_claims;
TRUNCATE TABLE wp_20_actionscheduler_claims;
TRUNCATE TABLE wp_21_actionscheduler_claims;
TRUNCATE TABLE wp_22_actionscheduler_claims;
TRUNCATE TABLE wp_23_actionscheduler_claims;
TRUNCATE TABLE wp_24_actionscheduler_claims;
TRUNCATE TABLE wp_25_actionscheduler_claims;

-- ============================================================================
-- SECTION 11: wp_X_actionscheduler_logs - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_actionscheduler_logs;
TRUNCATE TABLE wp_2_actionscheduler_logs;
TRUNCATE TABLE wp_3_actionscheduler_logs;
TRUNCATE TABLE wp_6_actionscheduler_logs;
TRUNCATE TABLE wp_7_actionscheduler_logs;
TRUNCATE TABLE wp_8_actionscheduler_logs;
TRUNCATE TABLE wp_9_actionscheduler_logs;
TRUNCATE TABLE wp_10_actionscheduler_logs;
TRUNCATE TABLE wp_11_actionscheduler_logs;
TRUNCATE TABLE wp_12_actionscheduler_logs;
TRUNCATE TABLE wp_13_actionscheduler_logs;
TRUNCATE TABLE wp_14_actionscheduler_logs;
TRUNCATE TABLE wp_15_actionscheduler_logs;
TRUNCATE TABLE wp_16_actionscheduler_logs;
TRUNCATE TABLE wp_17_actionscheduler_logs;
TRUNCATE TABLE wp_18_actionscheduler_logs;
TRUNCATE TABLE wp_19_actionscheduler_logs;
TRUNCATE TABLE wp_20_actionscheduler_logs;
TRUNCATE TABLE wp_21_actionscheduler_logs;
TRUNCATE TABLE wp_22_actionscheduler_logs;
TRUNCATE TABLE wp_23_actionscheduler_logs;
TRUNCATE TABLE wp_24_actionscheduler_logs;
TRUNCATE TABLE wp_25_actionscheduler_logs;

-- ============================================================================
-- SECTION 12: wp_X_actionscheduler_groups - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_actionscheduler_groups;
TRUNCATE TABLE wp_2_actionscheduler_groups;
TRUNCATE TABLE wp_3_actionscheduler_groups;
TRUNCATE TABLE wp_6_actionscheduler_groups;
TRUNCATE TABLE wp_7_actionscheduler_groups;
TRUNCATE TABLE wp_8_actionscheduler_groups;
TRUNCATE TABLE wp_9_actionscheduler_groups;
TRUNCATE TABLE wp_10_actionscheduler_groups;
TRUNCATE TABLE wp_11_actionscheduler_groups;
TRUNCATE TABLE wp_12_actionscheduler_groups;
TRUNCATE TABLE wp_13_actionscheduler_groups;
TRUNCATE TABLE wp_14_actionscheduler_groups;
TRUNCATE TABLE wp_15_actionscheduler_groups;
TRUNCATE TABLE wp_16_actionscheduler_groups;
TRUNCATE TABLE wp_17_actionscheduler_groups;
TRUNCATE TABLE wp_18_actionscheduler_groups;
TRUNCATE TABLE wp_19_actionscheduler_groups;
TRUNCATE TABLE wp_20_actionscheduler_groups;
TRUNCATE TABLE wp_21_actionscheduler_groups;
TRUNCATE TABLE wp_22_actionscheduler_groups;
TRUNCATE TABLE wp_23_actionscheduler_groups;
TRUNCATE TABLE wp_24_actionscheduler_groups;
TRUNCATE TABLE wp_25_actionscheduler_groups;

-- ============================================================================
-- SECTION 13: wp_X_actionscheduler_actions - Delete entries older than 30 days
-- ============================================================================

DELETE FROM wp_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_2_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_3_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_6_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_7_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_8_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_9_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_10_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_11_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_12_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_13_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_14_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_15_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_16_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_17_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_18_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_19_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_20_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_21_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_22_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_23_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_24_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_25_actionscheduler_actions WHERE scheduled_date_gmt < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- ============================================================================
-- SECTION 14: wp_X_redirection_404 - Delete entries older than 30 days
-- ============================================================================

DELETE FROM wp_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_2_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_3_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_6_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_7_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_8_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_9_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_10_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_11_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_12_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_13_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_14_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_15_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_16_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_17_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_18_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_19_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_20_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_21_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_22_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);
DELETE FROM wp_23_redirection_404 WHERE created < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- ============================================================================
-- SECTION 16: wp_X_cmplz_cookies - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_cmplz_cookies;
TRUNCATE TABLE wp_2_cmplz_cookies;
TRUNCATE TABLE wp_3_cmplz_cookies;
TRUNCATE TABLE wp_6_cmplz_cookies;
TRUNCATE TABLE wp_7_cmplz_cookies;
TRUNCATE TABLE wp_8_cmplz_cookies;
TRUNCATE TABLE wp_9_cmplz_cookies;
TRUNCATE TABLE wp_10_cmplz_cookies;
TRUNCATE TABLE wp_11_cmplz_cookies;
TRUNCATE TABLE wp_12_cmplz_cookies;
TRUNCATE TABLE wp_13_cmplz_cookies;
TRUNCATE TABLE wp_14_cmplz_cookies;
TRUNCATE TABLE wp_15_cmplz_cookies;
TRUNCATE TABLE wp_16_cmplz_cookies;
TRUNCATE TABLE wp_17_cmplz_cookies;
TRUNCATE TABLE wp_18_cmplz_cookies;
TRUNCATE TABLE wp_19_cmplz_cookies;
TRUNCATE TABLE wp_20_cmplz_cookies;
TRUNCATE TABLE wp_21_cmplz_cookies;
TRUNCATE TABLE wp_22_cmplz_cookies;
TRUNCATE TABLE wp_23_cmplz_cookies;
TRUNCATE TABLE wp_24_cmplz_cookies;
TRUNCATE TABLE wp_25_cmplz_cookies;

-- ============================================================================
-- SECTION 17: wp_X_cmplz_dnsmpd - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_cmplz_dnsmpd;
TRUNCATE TABLE wp_2_cmplz_dnsmpd;
TRUNCATE TABLE wp_3_cmplz_dnsmpd;
TRUNCATE TABLE wp_6_cmplz_dnsmpd;
TRUNCATE TABLE wp_7_cmplz_dnsmpd;
TRUNCATE TABLE wp_8_cmplz_dnsmpd;
TRUNCATE TABLE wp_9_cmplz_dnsmpd;
TRUNCATE TABLE wp_10_cmplz_dnsmpd;
TRUNCATE TABLE wp_11_cmplz_dnsmpd;
TRUNCATE TABLE wp_12_cmplz_dnsmpd;
TRUNCATE TABLE wp_13_cmplz_dnsmpd;
TRUNCATE TABLE wp_14_cmplz_dnsmpd;
TRUNCATE TABLE wp_15_cmplz_dnsmpd;
TRUNCATE TABLE wp_16_cmplz_dnsmpd;
TRUNCATE TABLE wp_17_cmplz_dnsmpd;
TRUNCATE TABLE wp_18_cmplz_dnsmpd;
TRUNCATE TABLE wp_19_cmplz_dnsmpd;
TRUNCATE TABLE wp_20_cmplz_dnsmpd;
TRUNCATE TABLE wp_21_cmplz_dnsmpd;
TRUNCATE TABLE wp_22_cmplz_dnsmpd;
TRUNCATE TABLE wp_23_cmplz_dnsmpd;
TRUNCATE TABLE wp_24_cmplz_dnsmpd;
TRUNCATE TABLE wp_25_cmplz_dnsmpd;

-- ============================================================================
-- SECTION 18: wp_X_cmplz_cookiebanners - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_cmplz_cookiebanners;
TRUNCATE TABLE wp_2_cmplz_cookiebanners;
TRUNCATE TABLE wp_3_cmplz_cookiebanners;
TRUNCATE TABLE wp_6_cmplz_cookiebanners;
TRUNCATE TABLE wp_7_cmplz_cookiebanners;
TRUNCATE TABLE wp_8_cmplz_cookiebanners;
TRUNCATE TABLE wp_9_cmplz_cookiebanners;
TRUNCATE TABLE wp_10_cmplz_cookiebanners;
TRUNCATE TABLE wp_11_cmplz_cookiebanners;
TRUNCATE TABLE wp_12_cmplz_cookiebanners;
TRUNCATE TABLE wp_13_cmplz_cookiebanners;
TRUNCATE TABLE wp_14_cmplz_cookiebanners;
TRUNCATE TABLE wp_15_cmplz_cookiebanners;
TRUNCATE TABLE wp_16_cmplz_cookiebanners;
TRUNCATE TABLE wp_17_cmplz_cookiebanners;
TRUNCATE TABLE wp_18_cmplz_cookiebanners;
TRUNCATE TABLE wp_19_cmplz_cookiebanners;
TRUNCATE TABLE wp_20_cmplz_cookiebanners;
TRUNCATE TABLE wp_21_cmplz_cookiebanners;
TRUNCATE TABLE wp_22_cmplz_cookiebanners;
TRUNCATE TABLE wp_23_cmplz_cookiebanners;
TRUNCATE TABLE wp_24_cmplz_cookiebanners;
TRUNCATE TABLE wp_25_cmplz_cookiebanners;

-- ============================================================================
-- SECTION 19: wp_X_cmplz_services - Delete all entries
-- ============================================================================

TRUNCATE TABLE wp_cmplz_services;
TRUNCATE TABLE wp_2_cmplz_services;
TRUNCATE TABLE wp_3_cmplz_services;
TRUNCATE TABLE wp_6_cmplz_services;
TRUNCATE TABLE wp_7_cmplz_services;
TRUNCATE TABLE wp_8_cmplz_services;
TRUNCATE TABLE wp_9_cmplz_services;
TRUNCATE TABLE wp_10_cmplz_services;
TRUNCATE TABLE wp_11_cmplz_services;
TRUNCATE TABLE wp_12_cmplz_services;
TRUNCATE TABLE wp_13_cmplz_services;
TRUNCATE TABLE wp_14_cmplz_services;
TRUNCATE TABLE wp_15_cmplz_services;
TRUNCATE TABLE wp_16_cmplz_services;
TRUNCATE TABLE wp_17_cmplz_services;
TRUNCATE TABLE wp_18_cmplz_services;
TRUNCATE TABLE wp_19_cmplz_services;
TRUNCATE TABLE wp_20_cmplz_services;
TRUNCATE TABLE wp_21_cmplz_services;
TRUNCATE TABLE wp_22_cmplz_services;
TRUNCATE TABLE wp_23_cmplz_services;
TRUNCATE TABLE wp_24_cmplz_services;
TRUNCATE TABLE wp_25_cmplz_services;

-- ============================================================================
-- END OF OPTIMIZED SCRIPT
-- ============================================================================
