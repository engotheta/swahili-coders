<div class="row">
    @if($errors->count())
        <div class="alert alert-warning col-12" role="alert">
          <span class='form_error'>{!! $errors->first('feedback_email') !!}</span> <br/>
          <span class='form_error'>{!! $errors->first('whistle_email') !!}</span> <br/>
          <span class='form_error'>{!! $errors->first('show_loading') !!}</span> <br/>
        </div>
    @endif

    <div class="form-group col-12">
      {!! Form::label('feedback_email', 'Email For Feedback') !!}
      {!! Form::email('feedback_email', null, ['class' => 'form-control']) !!}
    </div>

    <div class="col-12 form-group">
      {!! Form::label('show_loading', 'Page Loading Behaviour') !!}
      {!! Form::select('show_loading',array('1' => 'Only Show Page After Loading is Completed','0'=>'Show page as is Loading'),null,['class'=>'form-control']) !!}
    </div>
{{-- 
     <div class="form-group col-12">
       {!! Form::label('whistle_email', 'Email Address to send Whistle Blower') !!}
       {!! Form::email('whistle_email', null, ['class' => 'form-control']) !!}
     </div> --}}

     {{-- <div class="form-group col-12">
      {!! Form::label('days_on_new', 'Number of Days New/Event marked as New') !!}
      {!! Form::number('days_on_new', null, ['class' => 'form-control']) !!}
    </div> --}}

    {{-- <div class="col-12 form-group">
      {!! Form::label('logo', 'Site Logo') !!}
      {!! Form::file('logo', null, ['class' => 'form-control']) !!}
    </div>

    <div class="col-12 form-group">
      {!! Form::label('member_icon', 'Member Icon') !!}
      {!! Form::file('member_icon', null, ['class' => 'form-control']) !!}
    </div>

    <div class="col-12 form-group">
      {!! Form::label('project_icon', 'Project Icon') !!}
      {!! Form::file('project_icon', null, ['class' => 'form-control']) !!}
    </div>

    <div class="col-12 form-group">
      {!! Form::label('university_icon', 'University Icon') !!}
      {!! Form::file('university_icon', null, ['class' => 'form-control']) !!}
    </div>
    <div class="col-12 form-group">
      {!! Form::label('school_icon', 'School Icon') !!}
      {!! Form::file('school_icon', null, ['class' => 'form-control']) !!}
    </div>
  --}}

     <div class="form-group col-12">
           {!! Form::submit($submitButton, ['class' => 'btn btn-primary px-5']) !!}
     </div>
 </div>
