function testid() {
  echo security/$(basename $BATS_TEST_FILENAME)/$BATS_TEST_NUMBER
}

function run_ftpsync() {
  local testid=$(testid)
  rm -rf log/$testid output/$testid
  TESTID=$testid run ./bin/ftpsync "$@"
}

function run_ftpsync_cron() {
  local testid=$(testid)
  rm -rf log/$testid output/$testid
  TESTID=$testid run ./bin/ftpsync-cron "$@"
}
