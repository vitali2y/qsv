# qsv completion                                           -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_qsv_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_qsv_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  case "$compline" in
    *'fetchpost'*'--disk-cache-dir')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -- "$cur" )
      ;;

    *'describegpt'*'--prompt-file')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'geocode'*'countryinfonow'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'validate'*'--valid-output')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'fetch'*'--disk-cache-dir')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -- "$cur" )
      ;;

    *'geocode'*'index-update'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'applydp'*'emptyreplace'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help --replacement -h")" -- "$cur" )
      ;;

    *'geocode'*'index-reset'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'index-check'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'countryinfo'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'index-load'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'applydp'*'operations'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'reversenow'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'suggestnow'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'apply'*'emptyreplace'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help --replacement -h")" -- "$cur" )
      ;;

    *'fetchpost'*'--jqlfile')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'snappy'*'decompress'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'apply'*'operations'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'foreach'*'--dry-run')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'geocode'*'reverse'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help --k_weight -h")" -- "$cur" )
      ;;

    *'snappy'*'compress'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'snappy'*'validate'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'geocode'*'suggest'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--admin1 --help --min-score -h")" -- "$cur" )
      ;;

    *'fetch'*'--jqlfile')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'to'*'datapackage'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'applydp'*'dynfmt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--formatstr --help --new-column -h")" -- "$cur" )
      ;;

    *'apply'*'calconv'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--formatstr --help --new-column -h")" -- "$cur" )
      ;;

    *'apply'*'dynfmt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--formatstr --help --new-column -h")" -- "$cur" )
      ;;

    *'snappy'*'check'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'luau'*'filter'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'describegpt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--all --api-key --base-url --description --dictionary --help --json --jsonl --max-tokens --model --ollama --output --prompt --prompt-file --quiet --tags --timeout --user-agent -h")" -- "$cur" )
      ;;

    *'cat'*'columns'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -A file -W "$(_qsv_completions_filter "--help --pad -h")" -- "$cur" )
      ;;

    *'to'*'postgres'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'cat'*'rowskey'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -A file -W "$(_qsv_completions_filter "--group --group-name --help -h")" -- "$cur" )
      ;;

    *'py'*'--helper')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    *'to'*'parquet'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'fixlengths'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --insert --length --output -h")" -- "$cur" )
      ;;

    *'py'*'filter'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'safenames'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --mode --output --prefix --reserved -h")" -- "$cur" )
      ;;

    *'frequency'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--asc --delimiter --help --ignore-case --jobs --limit --lmt-threshold --memcheck --no-headers --no-nulls --other-sorted --other-text --output --pct-dec-places --select --unq-limit -h")" -- "$cur" )
      ;;

    *'searchset'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--count --delimiter --dfa-size-limit --flag --flag-matches-only --help --ignore-case --invert-match --json --no-headers --output --progressbar --quick --quiet --select --size-limit --unicode --unmatched-output -h")" -- "$cur" )
      ;;

    *'partition'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --drop --filename --help --no-headers --prefix-length -h")" -- "$cur" )
      ;;

    *'to'*'sqlite'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'transpose'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --memcheck --multipass --output -h")" -- "$cur" )
      ;;

    *'fetchpost'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--cache-error --compress --cookies --delimiter --disk-cache --disk-cache-dir --flush-cache --help --http-header --jql --jqlfile --max-errors --max-retries --mem-cache-size --new-column --no-cache --no-headers --output --pretty --progressbar --rate-limit --redis-cache --report --store-error --timeout --user-agent -h")" -- "$cur" )
      ;;

    *'sortcheck'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--all --delimiter --help --ignore-case --json --no-headers --pretty-json --progressbar --select -h")" -- "$cur" )
      ;;

    *'validate'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--batch --delimiter --fail-fast --help --invalid --jobs --no-headers --pretty-json --progressbar --quiet --timeout --trim --valid --valid-output -h")" -- "$cur" )
      ;;

    *'luau'*'map'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'generate'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --indsp --outdsp --output --rows -h")" -- "$cur" )
      ;;

    *'extdudup'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--dupes-output --help --human-readable --memory-limit --no-output --quiet -h")" -- "$cur" )
      ;;

    *'cat'*'rows'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -A file -W "$(_qsv_completions_filter "--flexible --help -h")" -- "$cur" )
      ;;

    *'applydp'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--batch --comparand --delimiter --formatstr --help --jobs --new-column --no-headers --output --rename --replacement -h dynfmt emptyreplace operations")" -- "$cur" )
      ;;

    *'headers'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -A file -W "$(_qsv_completions_filter "--delimiter --help --intersect --just-names --trim -h")" -- "$cur" )
      ;;

    *'flatten'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--condense --delimiter --field-separator --help --no-headers --separator -h")" -- "$cur" )
      ;;

    *'extsort'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help --jobs --memory-limit --no-headers --tmp-dir -h")" -- "$cur" )
      ;;

    *'to'*'xlsx'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'foreach'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --dry-run --help --new-column --no-headers --progressbar --unify -h")" -- "$cur" )
      ;;

    *'explode'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --no-headers --output --rename -h")" -- "$cur" )
      ;;

    *'exclude'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --ignore-case --no-headers --output -h -v")" -- "$cur" )
      ;;

    *'tojsonl'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--batch --delimiter --help --jobs --memcheck --no-boolean --output --trim -h")" -- "$cur" )
      ;;

    *'geocode'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--batch --cache-dir --cities-url --country --delimiter --force --formatstr --help --invalid-result --jobs --language --languages --new-column --output --progressbar --rename --timeout -h countryinfo countryinfonow index-check index-load index-reset index-update reverse reversenow suggest suggestnow")" -- "$cur" )
      ;;

    *'reverse'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --memcheck --no-headers --output -h")" -- "$cur" )
      ;;

    *'datefmt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--batch --default-tz --delimiter --formatstr --help --input-tz --jobs --keep-zero-time --new-column --no-headers --output --output-tz --prefer-dmy --progressbar --rename --ts-resolution --utc --zulu -h")" -- "$cur" )
      ;;

    *'prompt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--base-delay-ms --fd-output --filters --help --msg --output --quiet --save-fname --workdir -h")" -- "$cur" )
      ;;

    *'pseudo'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --formatstr --help --increment --no-headers --output --start -h")" -- "$cur" )
      ;;

    *'snappy'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--help --jobs --output --progressbar --quiet --timeout --user-agent -h check compress decompress validate")" -- "$cur" )
      ;;

    *'select'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --no-headers --output --random --seed --sort -h")" -- "$cur" )
      ;;

    *'py'*'map'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help -h")" -- "$cur" )
      ;;

    *'behead'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--flexible --help --output -h")" -- "$cur" )
      ;;

    *'rename'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --dfa-size-limit --help --ignore-case --no-headers --output --progressbar --quiet --select --size-limit --unicode -h")" -- "$cur" )
      ;;

    *'search'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--count --delimiter --dfa-size-limit --flag --help --ignore-case --invert-match --json --no-headers --not-one --output --preview-match --progressbar --quick --quiet --select --size-limit --unicode -h")" -- "$cur" )
      ;;

    *'schema'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--dates-whitelist --delimiter --enum-threshold --force --help --ignore-case --jobs --memcheck --no-headers --pattern-columns --prefer-dmy --stdout --strict-dates -h")" -- "$cur" )
      ;;

    *'sample'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --help --no-headers --output --rng --seed --timeout --user-agent -h")" -- "$cur" )
      ;;

    *'apply'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--batch --comparand --delimiter --formatstr --help --jobs --new-column --no-headers --output --progressbar --rename --replacement -h calconv dynfmt emptyreplace operations")" -- "$cur" )
      ;;

    *'index'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help --output -h")" -- "$cur" )
      ;;

    *'input'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--auto-skip --comment --delimiter --encoding-errors --escape --help --no-quoting --output --quote --quote-style --skip-lastlines --skip-lines --trim-fields --trim-headers -h")" -- "$cur" )
      ;;

    *'joinp'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--asof --coalesce --cross --date-format --datetime-format --decimal-comma --delimiter --filter-left --filter-right --float-precision --full --help --ignore-errors --infer-len --left --left-anti --left-semi --left_by --low-memory --no-optimizations --null-value --nulls --output --quiet --right_by --sql-filter --strategy --streaming --time-format --tolerance --try-parsedates --validate -h")" -- "$cur" )
      ;;

    *'slice'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --end --help --index --json --len --no-headers --output --start -h")" -- "$cur" )
      ;;

    *'table'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--align --condense --delimiter --help --memcheck --output --pad --width -h")" -- "$cur" )
      ;;

    *'count'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--flexible --help --human-readable --low-memory --no-headers --no-polars --width -h")" -- "$cur" )
      ;;

    *'fetch'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--cache-error --cookies --delimiter --disk-cache --disk-cache-dir --flush-cache --help --http-header --jql --jqlfile --max-errors --max-retries --mem-cache-size --new-column --no-cache --no-headers --output --pretty --progressbar --rate-limit --redis-cache --report --store-error --timeout --url-template --user-agent -h")" -- "$cur" )
      ;;

    *'excel'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--date-format --delimiter --error-format --flexible --help --jobs --keep-zero-time --metadata --output --quiet --range --sheet --trim -h")" -- "$cur" )
      ;;

    *'dedup'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --dupes-output --help --human-readable --ignore-case --jobs --memcheck --no-headers --numeric --output --quiet --select --sorted -h")" -- "$cur" )
      ;;

    *'sniff'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --harvest-mode --help --json --just-mime --no-infer --prefer-dmy --pretty-json --progressbar --quick --quote --sample --save-urlsample --stats-types --timeout --user-agent -h")" -- "$cur" )
      ;;

    *'stats'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--cache-threshold --cardinality --dates-whitelist --delimiter --everything --force --help --infer-boolean --infer-dates --jobs --mad --median --memcheck --mode --no-headers --nulls --output --prefer-dmy --quartiles --round --select --stats-binout --typesonly -h")" -- "$cur" )
      ;;

    *'jsonl'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--batch --delimiter --help --ignore-errors --jobs --output -h")" -- "$cur" )
      ;;

    *'split'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--chunks --delimiter --filename --help --jobs --kb-size --no-headers --pad --quiet --size -h")" -- "$cur" )
      ;;

    *'sqlp'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--compress-level --compression --date-format --datetime-format --decimal-comma --delimiter --float-precision --format --help --ignore-errors --infer-len --low-memory --memcheck --no-headers --no-optimizations --output --quiet --rnull-values --statistics --time-format --truncate-ragged-lines --try-parsedates --wnull-value -h")" -- "$cur" )
      ;;

    *'sort'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter --faster --help --ignore-case --jobs --memcheck --no-headers --numeric --output --random --reverse --rng --seed --select --unique -h")" -- "$cur" )
      ;;

    *'diff'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--delimiter right --delimiter-left --delimiter-output --help --jobs --key --no-headers-left --no-headers-output --no-headers-right --output --sort-columns -h")" -- "$cur" )
      ;;

    *'enum'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--constant --copy --delimiter --hash --help --increment --new-column --no-headers --output --start --uuid4 --uuid7 -h")" -- "$cur" )
      ;;

    *'luau'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--begin --cache-dir --ckan-api --ckan-token --colindex --delimiter --end --help --luau-path --max-errors --no-globals --no-headers --output --progressbar --remap --timeout -h filter map")" -- "$cur" )
      ;;

    *'json'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--help --output -h")" -- "$cur" )
      ;;

    *'join'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--cross --delimiter --full --help --ignore-case --left --left-anti --left-semi --no-headers --nulls --output --right -h")" -- "$cur" )
      ;;

    *'fill'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--backfill --default --delimiter --first --groupby --help --no-headers --output -h")" -- "$cur" )
      ;;

    *'cat'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--delimiter --help --no-headers --output -h columns rows rowskey")" -- "$cur" )
      ;;

    *'fmt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_qsv_completions_filter "--ascii --crlf --delimiter --escape --help --no-final-newline --out-delimiter --output --quote --quote-always --quote-never -h")" -- "$cur" )
      ;;

    *'py'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--batch --delimiter --help --helper --no-headers --output --progressbar -h filter map")" -- "$cur" )
      ;;

    *'to'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--delimiter --drop --dump --evolve --help --jobs --pipe --print-package --quiet --schema --separator --stats --stats-csv -h datapackage parquet postgres sqlite xlsx")" -- "$cur" )
      ;;

    *)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_qsv_completions_filter "--envlist --help --list --update --updatenow --version -h -v apply applydp behead cat count datefmt dedup describegpt diff enum excel exclude explode extdudup extsort fetch fetchpost fill fixlengths flatten fmt foreach frequency generate geocode headers index input join joinp json jsonl luau partition prompt pseudo py rename reverse safenames sample schema search searchset select slice snappy sniff sort sortcheck split sqlp stats table to tojsonl transpose validate")" -- "$cur" )
      ;;

  esac
} &&
complete -F _qsv_completions qsv

# ex: filetype=sh
