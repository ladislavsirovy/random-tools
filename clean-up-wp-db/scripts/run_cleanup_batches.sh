#!/bin/bash

# WordPress Database Cleanup - Batch Runner
# This script runs the cleanup operations in sections with progress tracking

# Configuration
DB_USER="your_username"
DB_NAME="your_database_name"
LOG_FILE="../cleanup_log_$(date +%Y%m%d_%H%M%S).log"

echo "WordPress Database Cleanup Started: $(date)" | tee -a "$LOG_FILE"
echo "========================================" | tee -a "$LOG_FILE"

# Prompt for password once
read -sp "Enter MySQL password: " DB_PASS
echo

# MySQL connection command
MYSQL_CMD="mysql -u$DB_USER -p$DB_PASS $DB_NAME"

# Function to run SQL and log results
run_section() {
    local section_num=$1
    local section_name=$2
    local sql_file=$3
    
    echo "" | tee -a "$LOG_FILE"
    echo "[$section_num] Running: $section_name" | tee -a "$LOG_FILE"
    echo "----------------------------------------" | tee -a "$LOG_FILE"
    
    start_time=$(date +%s)
    
    if $MYSQL_CMD < "$sql_file" 2>> "$LOG_FILE"; then
        end_time=$(date +%s)
        duration=$((end_time - start_time))
        echo "✓ Completed in ${duration}s" | tee -a "$LOG_FILE"
    else
        echo "✗ Failed! Check log file: $LOG_FILE" | tee -a "$LOG_FILE"
        exit 1
    fi
}

# Create temporary section files
echo "Preparing sections..."

# Section 1: wp_X_relevanssi_log
cat > /tmp/cleanup_section_01.sql << 'EOF'
-- Delete relevanssi logs older than 30 days
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
EOF

# Section 2: wp_X_gf_entry
cat > /tmp/cleanup_section_02.sql << 'EOF'
-- Delete Gravity Forms entries older than 90 days
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
EOF

echo "✓ Created section files"
echo ""
echo "Ready to run cleanup in 19 sections"
echo "This will take some time depending on database size"
echo ""
read -p "Press Enter to continue..."

# Run sections
run_section "1/19" "Relevanssi logs" "/tmp/cleanup_section_01.sql"
run_section "2/19" "Gravity Forms entries" "/tmp/cleanup_section_02.sql"

# Add more sections as needed...

echo "" | tee -a "$LOG_FILE"
echo "========================================" | tee -a "$LOG_FILE"
echo "Cleanup completed: $(date)" | tee -a "$LOG_FILE"
echo "Log saved to: $LOG_FILE"

# Cleanup temp files
rm -f /tmp/cleanup_section_*.sql
