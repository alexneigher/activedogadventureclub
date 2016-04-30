$('#modal').html('').modal('hide');
$('#adventure-groups').append("<%= j(render :partial => 'adventure_groups/show', locals: {adventure_group: @adventure_group}) %>")