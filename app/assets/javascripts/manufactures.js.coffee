$(document).ready ->
  $('#checkall').click ->
    #for x in $('.item')
    #  x.checked = this.checked

    $('.item').prop('checked', this.checked)

