#!/bin/bash

mitsuba-spectral()
{
  mitsubaDir="$(dirname "${BASH_SOURCE[0]}")"
  mitsubaDir="$(realpath "${mitsubaDir}")"

  echo "SOURCING: ${mitsubaDir}/setpath.sh"
  source ${mitsubaDir}/setpath.sh

  renderType="reflectance"
  if [[ $1 != *"="* ]] && [[ $1 != *"."* ]]; then
    renderType="$1"
  fi

  cmd2run="mitsuba -v -o spectral_${renderType} -D render_type=spectral_${renderType}"

  for curInput in "$@"
  do
    if [[ $curInput == *"="* ]]; then
      cmd2run="${cmd2run} -D ${curInput}"
      echo "${curInput}"
    fi
  done

  if [[ $curInput != *".xml" ]]; then
    echo "ERROR: Last argument should be an XML file"
    return
  fi


  cmd2run="${cmd2run} ${curInput}"
  echo "Running following command:"
  echo "${cmd2run}";
  echo " ";
  ${cmd2run}
}