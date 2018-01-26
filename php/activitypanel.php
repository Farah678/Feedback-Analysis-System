<form class="form-horizontal " method="post" action="teaching.php">
<div class="panel panel-default" id="Teaching">
  <div class="panel-heading">
    <h2 class="panel-title">Teaching</h2>	
  </div>
<div class="panel-body"> 
	<h4>Theory</h4><hr>
  <div class="form-group">
    <label for="tctitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="tctitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="tclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="tclass" placeholder="">
    </div>
   </div>
   <div class="form-group">
   <label for="tstudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" name="tstudents" placeholder="">
    </div>
	
    <label for="tlechours" class="col-lg-3 control-label">No. of lecture hours/week:</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="tlechours" placeholder="">
    </div>
	</div>

    <h4>Practical</h4><hr>
  <div class="form-group">
    <label for="pctitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="pctitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="pclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="pclass" placeholder="">
    </div>
   </div>
   <div class="form-group">
   <label for="pstudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" name="pstudents" placeholder="">
    </div>
	
    <label for="plechours" class="col-lg-3 control-label">No. of lecture hours/week:</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="plechours" placeholder="">
    </div>
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="teaching" value="Submit">
		</div>
</div>
</form>

<form class="form-horizontal ">
<div class="panel panel-default" id="Examinations">
  <div class="panel-heading">
    <h2 class="panel-title">Examinations</h2>	
  </div>
  <div class="panel-body"> 
	
  <div class="form-group">
    <label for="ectitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" id="ectitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="eclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-6">
      <input type="text" class="form-control" id="eclass" placeholder="Class">
    </div>
	<label for="estudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-2">
      <input type="text" class="form-control" id="estudents">
    </div>
   </div>
   <div class="form-group">
  
    <label for="edate" class="col-lg-3 control-label">Date of Examination</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" id="edate" >
    </div>
	
	<label for="esubmission" class="col-lg-3 control-label">Date of Award Submission</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" id="esubmission" >
    </div>
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="examinations" value="Submit">
  </div>
</div>
</form>

<form class="form-horizontal ">
<div class="panel panel-default" id="Research">
  <div class="panel-heading">
    <h2 class="panel-title">Research</h2>	
  </div>
  <div class="panel-body"> 

	<form class="form-horizontal ">
  <div class="form-group ">
		<label for="research" class="col-lg-3 control-label ">Research in Conjunction with Masters / Doctoral Programmes:</label>
		<div class="col-lg-9">
		  <input type="text" class="form-control" id="research" placeholder="">
		</div>
		
  </div><button type="submit" class="btn btn-primary col-lg-2 col-lg-offset-10">Add More</button>
  </form>
  <br><br><br>
  <form class="form-horizontal">

  <div class="form-group">
		<label for="research2" class="col-lg-3 control-label">Other Research Activities:</label>
		<div class="col-lg-9">
		  <input type="text" class="form-control" id="research2" placeholder="">
		</div>
   </div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="research" value="Submit">
	</form>
</div>

<form class="form-horizontal ">
<div class="panel panel-default" id="Publications">
  <div class="panel-heading">
    <h2 class="panel-title">Publications</h2>	
  </div>
  <div class="panel-body"> 

  <div class="form-group">
    <label for="ptitle" class="col-lg-2 control-label">Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" id="ptitle" placeholder="Title">
    </div>
  </div>
  <div class="form-group">
    <label for="pconferences" class="col-lg-3 control-label">Journals / Conferences</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" id="pconferences" placeholder="">
    </div>
	</div>
	<div class="form-group">
	<label for="pdate" class="col-lg-2 control-label">Date</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" id="pdate">
    </div>
  
    <label for="pvolume" class="col-lg-3 control-label">Volume</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" id="pvolume" >
    </div>
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="publications" value="Submit">
  </div>
</div>
</form>

<form class="form-horizontal ">
<div class="panel panel-default" id="Administrative">
  <div class="panel-heading">
    <h2 class="panel-title">Administrative Duties</h2>	
  </div>
  <div class="panel-body"> 
  <div class="form-group">
    <label for="atitle" class="col-lg-2 control-label">Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" id="atitle" placeholder="Title">
    </div>
  </div>
  <div class="form-group">
    <label for="ajournals" class="col-lg-3 control-label">Journals / Conferences</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" id="ajournals">
    </div>
	</div>
	<div class="form-group">
	<label for="adate" class="col-lg-2 control-label">Date</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" id="adate">
    </div>
  
    <label for="avolume" class="col-lg-3 control-label">Volume</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" id="avolume" >
    </div>
	
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="administrative" value="Submit">

	</div>
</div>
</form>

<form class="form-horizontal ">
<div class="panel panel-default" id="Training">
  <div class="panel-heading">
    <h2 class="panel-title">Training</h2>	
  </div>
  <div class="panel-body"> 
	<form class="form-horizontal ">
  <div class="form-group">
    <label for="tctitle" class="col-lg-3 control-label">Higher Education</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" id="tctitle" placeholder="(Please give duration and type of training).">
    </div>
  </div>
  <div class="form-group">
    <label for="tclass" class="col-lg-3 control-label">Professional / Scientific Meetings Attended:</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" id="tclass" placeholder="(Seminars, Workshops, Symposia and others)">
    </div>
   </div>
  <div class="form-group">
   <label for="tstudents" class="col-lg-3 control-label">Significant Community and Professional Service or Academic Distinction</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" id="tstudents" placeholder="(e.g. Board Member, Journal Editor, Officer in Professional Society etc.)">
    </div>
        </div>
    

	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="training" value="Submit">
      </form>
		</div>
</div>
</form>







