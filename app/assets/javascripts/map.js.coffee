$(->
  $('a','#map_html').each(->
    point = $(this).attr('data-point').split(',')
    point[1] = if point[1] < 0 then parseInt(point[1]) * - 1 else point[1] * - 1
    $(this).css('top', "#{point[1]}px").css("left","#{point[0]}px")
    $(this).hover(
      (e)->
        $('#map_html').append(
          $('<div />').addClass('hover').text("#{$(this).text()}(#{$(this).attr('data-point')})")
                      .css('top', $(this).position()['top']-20)
                      .css('left',$(this).position()['left']+10)
        )
      ,
      (e)-> $('#map_html div.hover').remove()
    )
  )

  $('#toggle').click((e) ->
    checked = $(this).attr('checked')
    $('a','#map_html').each(->
      if checked == 'checked'
        $(this).trigger('mouseover')
      else
        $(this).trigger('mouseout')
    )
  )
)
