<div class="serendipityCommentForm">
  <a id="serendipity_CommentForm"></a>
  <!-- The actual form -->
  <form id="serendipity_comment_CommentForm" action="{$commentform_action}#feedback" method="post">
    <div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
    <div class="form-group row">
      <label for="serendipity_commentform_name" class="col-2 col-form-label">{$CONST.NAME}</label>
      <div class="col-10">
        <input class="form-control" type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}">
      </div>
    </div>

    <div class="form-group row">
      <label for="serendipity_commentform_email" class="col-2 col-form-label">{$CONST.EMAIL}</label>
      <div class="col-10">
        <input class="form-control" type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" aria-describedby="emailHelpBlock">
        <small id="emailHelpBlock" class="form-text text-muted">
        E-Mail addresses will not be displayed and will only be used for E-Mail notifications.
        </small>
      </div>
    </div>

    <div class="form-group row">
      <label for="serendipity_commentform_url" class="col-2 col-form-label">URL</label>
      <div class="col-10">
        <input class="form-control" type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}">
      </div>
    </div>

    <div class="form-group row">
      <label for="serendipity_replyTo" class="col-2 col-form-label">{$CONST.IN_REPLY_TO}</label>
      <div class="col-10">
        {$commentform_replyTo}
      </div>
    </div>

    <div class="form-group row">
      <label for="serendipity_commentform_comment" class="col-2 col-form-label">{$CONST.COMMENT}</label>
      <div class="col-10">
        <textarea class="frm form-control" type="text" id="serendipity_commentform_comment" name="serendipity[comment]" aria-describedby="commentFormHelpBlock">{$commentform_data}</textarea>
      </div>
    </div>

    {if $is_commentform_showToolbar}
      <div class="row d-flex justify-content-center">
        <div class="form-check form-check-inline">
          <label for="checkbox_remember" class="custom-control custom-checkbox">
            <input id="checkbox_remember" type="checkbox" name="serendipity[remember]" value="{$commentform_remember}" class="custom-control-input">
            <span class="custom-control-indicator"></span>
            <span class="custom-control-description">{$CONST.REMEMBER_INFO}</span>
          </label>
        </div>
        {if $is_allowSubscriptions}
        <div class="form-check form-check-inline">
          <label for="checkbox_subscribe" class="custom-control custom-checkbox">
            <input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" value="{$commentform_subscribe}" class="custom-control-input">
            <span class="custom-control-indicator"></span>
            <span class="custom-control-description">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</span>
          </label>
        </div>
        {/if}
      </div>
    {/if}

    {if $is_moderate_comments}
      <div class="row d-flex justify-content-center">
        <div class="col-12 alert alert-warning" role="alert">
          {$CONST.COMMENTS_WILL_BE_MODERATED}
        </div>
      </div>
    {/if}

    <div class="row d-flex justify-content-center">
      <div class="col-12 text-center">
        {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
      </div>
    </div>

    <div class="btn-group d-flex justify-content-center" role="group">
      <button type="submit" name="serendipity[submit]" class="btn btn-secondary btn-lg" value="{$CONST.SUBMIT_COMMENT}">{$CONST.SUBMIT_COMMENT}</button>
    </div>
  </form>
</div>
