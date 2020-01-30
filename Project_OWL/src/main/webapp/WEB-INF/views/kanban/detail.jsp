<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>


</script>
<div class="container-fluid mt-2 hidden" style="padding: 25px;" id="kanbanDetailBox" >	
	<input type="hidden" id="issueIdxNum">
	
    <div class="row">
        <div class="col-8">
            <div class="card">
                <div class="card-title mb-0">
                    <div class="">
                    	<div class="row">
                    	<div class="col-11">
                      <h2 id="issueDetailTitle">Drive Development</h2> 
                      <div class="row hidden" id="editTitleBox">
                      <div class="col-11">
                        <input type="text" class="form-control" id="issueDetailTitleEdit"></div>
                        <div class="col-1"><button class="btn btn-primary" onclick="editIssueTitleOk()">save</button></div>
                       </div>
                        </div>
                        <div class="col-1 mr-0">
								<i class="fas fa-cog font-16 flot-right pr-0 mt-2 ml-1 text-muted" onclick="editTitleViewBtn()"style="cursor: pointer"></i>
							</div>
						</div>
                    </div>
                </div>
                <hr class="mt-1">
                <div class="card-body mt-0 mb-0"  style="border: 1px solid; border-color:#e9e9e9;">
                <div style="margin-left: 98%;"><i class="fas fa-cog font-16 flot-right pr-0 text-muted" onclick="editContentViewBtn()"style="cursor: pointer"></i>
                </div>
                   <div id="issueDetailContent">
                    <p>Task </p>
                    <p>- 드라이브 디폴트 폴더 생성</p>
                    </div> 
                    <div id="editContentBox" class="hidden">
                    <textarea class="form-control bg-light p-0" id="isContentEdit" name="content"></textarea>
                    <button class="btn btn-primary" onclick="editIssueContentOk()">save</button>
                    </div>
                </div>

                <div class="accordion" id="kanbanAccordion">
                	<!-- 첨부파일 -->
                    <div class="card mb-0">
                        <div class="card-header" id="kanbanFileBoxHeader">
                            <a  data-toggle="collapse" data-parent="#kanbanAccordion" href="#kanbanFileBox" aria-expanded="true" aria-controls="kanbanFileBox">
                                <h5 class="mb-0">
                                    <i class="fas fa-download mr-2 " aria-hidden="true"></i>
                                    <span id="issueDetailFileCount">첨부파일 (3)</span>
                                </h5>
                            </a>
                        </div>
                        <div id="kanbanFileBox" class="collapse multi-collapse">
                            <ul class=" m-4 list-style-none" id="issueDetailFiles">
                                <li class="mb-2" style="font-size: 16px">
                                    <a href="#"><i class="far fa-save"></i>&nbsp;&nbsp;<span> 어쩌구.txt</span></a>
                                </li>
                                <li class="mb-2" style="font-size: 16px">
                                    <a href="#"><i class="far fa-save"></i>&nbsp;&nbsp;<span> 어쩌구.txt</span></a>
                                </li>
                                <li class="mb-2" style="font-size: 16px">
                                    <a href="#"><i class="far fa-save"></i>&nbsp;&nbsp;<span> 어쩌구.txt</span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <!-- Activity -->
                    <div class="card mb-0">
                        <div class="card-header" id="kanbanActivityBoxHeader">
                            <a data-toggle="collapse" data-parent="#kanbanAccordion" href="#kanbanActivityBox" aria-expanded="true" aria-controls="kanbanActivityBox">
                                <h5 class="mb-0">
                                    <i class="fas fa-bars mr-2" aria-hidden="true"></i>
                                    <span id="issueDetailActivityCount">Activity (4)</span>
                                </h5>
                            </a>
                        </div>
                        <div id="kanbanActivityBox" class=" collapse multi-collapse" >
                            <ul class="timeline w-100" id="issueDetailActivity">
                                <li>
                                    <p> Crystal opened this issue 1/11</p>
                                </li>
                                <li>
                                    <p>1/12 edited </p>
                                </li>
                                <li>
                                    <p>1/14 edited</p>
                                </li>
                                <li>
                                    <p>1/16 moved this issue from 'to do' to 'done'</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                   
                    <!-- Comments -->
                    <div class="card mb-0">
                        <div class="card-header" id="kanbanCommentBoxHeader">
                            <a data-toggle="collapse" data-parent="#kanbanAccordion" href="#kanbanCommentBox" aria-expanded="true" aria-controls="kanbanCommentBox">
                                <h5 class="mb-0">
                                    <i class="fas fa-comments mr-2" aria-hidden="true"></i>
                                    <span id=issueDetailCommentCount>Comments (10)</span>
                                </h5>
                            </a>
                        </div>
                        <div id="kanbanCommentBox" class=" collapse show multi-collapse">
                            <div class="card-body mt-0" style="border: 1px solid; border-color:#e9e9e9; border-radius: 0.25rem;background-color:#e9e9e9;">
                                <div class="comment-widgets scrollable" id="issueDetailComment">
<!--                                     <div class="d-flex flex-row comment-row m-0 mb-1">
                                        <div class="p-2">
                                            <div class="comment_img">C</div>
                                        </div>
                                        <div class="comment-text w-100">
                                            <h6 class="font-medium mb-2">Cindy 
                                            <span class="text-muted float-right">Jan 18, 2020</span></h6>
                                            <div class="mb-1 d-block"><span>화이팅</span></div>
                                            <div class="comment-footer float-right">
                                                <button type="button" class="btn btn-info btn-sm">Edit</button>
                                                <button type="button" class="btn btn-secondary btn-sm">Delete</button>
                                            </div>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                </div>
                  <div class="row container-fluid">
						<span style="color:#326295"><i class="fab fa-replyd fa-5x" style="margin-left: 10px; margin-right: 10px"></i></span>
						<textarea id="replycontent" name="replycontent" style="resize: none; width:75%"></textarea>
						<button class="btn btn-secondary " id="replyBtn" style="margin-left: 15px">Comment</button>
            </div>
            
        </div>
        
        <!-- Option -->
        <div class="col-4">
            <div class="form-group bold">
                <div class="row">
                    <div class="col-4">Assignees </div>
                    <div class="col-8"> <!-- <span  id="issueDetailAssignees" class="hidden"> Chloe</span> -->
						<div class="row">
							<div class="col-10">
							<select class="select2 custom-select hidden" name="assigned" id="assignedEdit">
								</select> 
							<span id="issueDetailAssignees"> Chloe</span>
							</div>
							<div class="col-2">
								<i class="fas fa-cog font-16 flot-right ml-1 editViewBtn text-muted" style="cursor: pointer"></i>
							</div>
						</div>
					</div>
                </div>
            </div>
            <hr>
            <div class="form-group bold" >
                <div class="row">
                    <div class="col-4">Label</div>
                    <div class="col-8">
                        <div class="row">
							<div class="col-10">
							<select class="select2 custom-select hidden" name="labelIdx" id="labelIdxEdit">
								</select> 
							<span id="issueDetailLabel"  style="padding-right:7px; padding-left:7px; " class="badgeIcon">Dev</span>
							</div>
							<div class="col-2">
								<i class="fas fa-cog font-16 flot-right ml-1 editViewBtn text-muted" style="cursor: pointer"></i>
							</div>
						</div>
                        
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group bold">
                <div class="row">
                    <div class="col-4">Priority</div>
                    <div class="col-8">
                           <div class="row">
							<div class="col-10">
							  <div class="row hidden" id="editPriorityBox" >
								<div class="col-8">
									<select class="select2 custom-select" name=priorityCode id="priorityCodeEdit">
										<option value="" id="">Select</option>
										<option value="LOW">low</option>
										<option value="MEDIUM">medium</option>
										<option value="HIGH">high</option>
										<option value="URGENT">urgent</option>
									</select> 
								</div>
								<div class="col-1"> 
							   		<button class="btn btn-primary" onclick="editIssuePriorityOk()">save</button>
							    </div>
							</div>
							<span id="issueDetailPriority">high</span>
							
							</div>
							<div class="col-2">
								<i class="fas fa-cog font-16 flot-right ml-1 editViewBtn text-muted" style="cursor: pointer"></i>
							</div>
						</div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group bold">
               <div class="row">
                  <div class="col-4">Due Date</div>
                    <div class="col-8">
                           <div class="row">
							<div class="col-10">
							  <div class="row hidden" id="editDuedateBox" >
								<div class="col-8">
									  <input type="text" class="form-control" id="datepicker-editIssue" placeholder="yyyy-mm-dd" name="dueDate" > 
								</div>
								<div class="col-1"> 
							   		<button class="btn btn-primary" onclick="editIssueDueDateOk()">save</button>
							    </div>
							</div>
							<span id="issueDetailDueDate">2020-01-02</span>
							
							</div>
							<div class="col-2">
								<i class="fas fa-cog font-16 flot-right ml-1 editViewBtn text-muted" style="cursor: pointer"></i>
							</div>
						</div>
                    </div>
                </div>
               <!--  <div class="row">
                    <div class="col-4">Due Date</div>
                    <div class="col-8" ><i class="fas fa-calendar mr-1"></i> <span id="issueDetailDueDate"></span>
                     
                     <input type="text" class="form-control" id="datepicker-editIssue" placeholder="yyyy-mm-dd" name="dueDate" >
                     <i class="fas fa-cog flot-right ml-1 text-muted" onclick="editDueDate()" style="cursor:pointer"></i>
                    </div>
                </div> -->
            </div>
            <hr>
            <div class="form-group bold">
                <div class="row">
                    <button class="btn w-100" id="closeIssueDetailBtn"><i class="fas fa-check mr-2 text-danger"></i><span id="issueClosedChk">Close issue</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center mt-5">
    	<button class="btn btn-primary mr-1" onclick="changeKanbanView('list')"><i class="fas fa-chevron-left"></i>뒤로가기</button>
        <button class="btn btn-primary ml-1" onclick="editIssueDetailView()">수정</button>
    </div>
</div>