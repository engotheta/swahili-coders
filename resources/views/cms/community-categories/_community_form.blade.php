<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('name') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('principal_officer') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('country') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('region') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('website') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('email') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('phone') !!}</span> <br/>
        <span class='form_error'>{!! $errors->first('category_id') !!}</span> <br/>
      </div>
    @endif
</div>


<div class="col-md-12 px-0 mt-0">
  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">
   
    {{-- <div class="form-group">
      {!! Form::label('photo_url', ' ') !!}
      {!! Form::hidden('photo_url', null,['id' => 'upload_img','class'=>'form-control']) !!}
    </div>
    --}}

    <div class="row">
      <div class="col-12 col-md-12 form-group round border p-2 ">
        {!! Form::label('photo_url', 'Image / logo [ratio 16:9]') !!}
        {!! Form::file('photo_url',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-6 col-md-6 form-group">
        {!! Form::label('name', 'Community / Institution Name *') !!}
        {!! Form::text('name',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-6 col-md-6 form-group">
        {!! Form::label('phone', 'Mobile Phone') !!}
        {!! Form::text('phone',null,['class'=>'form-control']) !!}
      </div>

    
      <div class="col-6 col-md-6 form-group">
        {!! Form::label('email', 'Email') !!}
				{!! Form::text('email', null, ['id' => 'd4', 'class' => 'form-control']) !!}
      </div>

      <div class="col-6 col-md-4 form-group">
        {!! Form::label('website', 'Website') !!}
				{!! Form::text('website', null, ['id' => 'da', 'class' => 'form-control']) !!}
      </div>

      <div class="col-6 col-md-4  form-group">
        {!! Form::label('country', 'Country') !!}
				{!! Form::text('country', null, ['id' => 'd5', 'class' => 'form-control']) !!}
      </div>

      
      <div class="col-6 col-md-4  form-group">
        {!! Form::label('region', 'Region / state') !!}
				{!! Form::text('region', null, ['id' => 'd5', 'class' => 'form-control']) !!}
      </div>


      <div class="col-6 col-md-4  form-group">
        {!! Form::label('active', 'Status') !!}
        {!! Form::select('active', array('1' => 'Active','0'=>'Inactive'),null,['class'=>'form-control']) !!}
      </div>


      <div class="col-12 form-group" style="display:none">
        {!! Form::label('category_id', 'Publication Category') !!}
        {!! Form::text('category_id',$selected_category->id,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary saving-button col-md-12']) !!}
      </div>
    </div>
  </div>
</div>
