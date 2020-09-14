Feature: Upload Documents Feature

  @TEST:Documents_feature
  @SCENARIO:Upload_documents
  @URGENCY:Medium

  @Scenario:Uploading_documents
  Scenario: I want to Add Documents
	Given I sign in
	Then I go to the Documents Library and add the PDF
	Then I add an Image
	Then I add an mp3