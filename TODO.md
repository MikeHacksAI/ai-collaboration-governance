
# TODO — AI Collaboration Governance

- [x] Review and update handoff/AI-Collaboration-Handoff.md
- [x] Update project-summary/PROJECT_SUMMARY.md
- [x] Log any new drift in drift-log/
- [x] Review and update project-requirements.md
- [ ] Final commit and push

## Automation Requirement
Automatically scan incidents/, drift-log/, and ai-chat-history/ (including subfolders) for new files. Log every governance issue uploaded with a recruiter-audit-ready summary (filename matches source).
## Automation Requirement
Automatically scan incidents/, drift-log/, and ai-chat-history/ (including subfolders) for new files—including HTML context files and user-generated markdown files. Log every governance issue uploaded with a recruiter-audit-ready summary (filename matches source). Simply place HTML or markdown files in the appropriate folder for automatic processing.
- [x] Summarize all Microsoft chat history files
- [x] Log governance, incident, and drift findings for each untracked file
- [x] Automatically scan incidents/, drift-log/, and ai-chat-history/ for new files
- [ ] Update audit summary and tracking documentation
- [ ] Mark processed files and update TODO.md

# Automation Tracking

- [ ] Scan incidents/, drift-log/, ai-chat-history/ for new files on open/close
- [ ] Log recruiter-audit-ready summary for each new file
- [ ] Summarize Microsoft chat history files
- [ ] Log governance, incident, and drift findings for each untracked file
- [ ] Mark processed files below and update TODO.md
- [ ] Update audit summary and tracking documentation
- [ ] Confirm drift-log.md and drift-log-cumulative.md updated on user request

## Processed Files (Automation)
- [ ] (List processed files here as automation runs)

# Workspace Handoff & Next Steps
- [ ] Ensure all drift logs and cumulative logs follow the standards in AI-Drift-Governance-Log.md (timestamp, source, deduplication)
- [ ] Reference AI-Drift-Governance-Log.md in new-project.ps1 and all new drift-log.md files
- [ ] Use convert-drift-entry.ps1 to standardize and deduplicate drift log entries before merging
- [ ] Add a handoff note in handoff/AI-Collaboration-Handoff.md summarizing workspace state and referencing TODO.md
- [ ] Final commit: "Workspace ready for handoff—see TODO.md for next steps"
- [ ] Push all changes to remote repository
