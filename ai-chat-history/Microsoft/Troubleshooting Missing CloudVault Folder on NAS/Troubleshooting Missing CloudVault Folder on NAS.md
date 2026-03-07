Full Conversation Recap – Synology DS223, Permissions, File Station Visibility, and Cloud Sync Setup

This page provides a complete, chronological, and accurate recap of the entire troubleshooting session. It consolidates all findings, corrections, pivots, and final working configurations for your Synology DS223, including permissions behavior, File Station visibility, SMB access, and Cloud Sync configuration.

1. Initial Problem

You could not see the shared folder cloudvault in File Station, and Cloud Sync kept defaulting to your /home directory instead of the intended shared folder.

At the same time, SMB access from Windows File Explorer was inconsistent.

2. Early Assumption: Windows ACL / Traverse Permissions

Early in the conversation, the guidance assumed your NAS supported Windows ACL, which exposes:

Traverse folders

Execute

Delete

Change permissions

Take ownership

This assumption was incorrect.

Your screenshots later proved that your Synology DS223 does not support Windows ACL at all.

Because of this:

The Windows ACL dropdown never appeared.

The Traverse folders permission does not exist on your model.

The Advanced Permissions → Windows ACL editor does not exist.

All ACL-related paths were dead ends.

This mismatch caused confusion until your screenshots clarified the actual capabilities of your NAS.

3. Correct Model Behavior: DS223 Uses Simplified Permissions

Your NAS supports only:

Basic shared folder permissions (Read/Write, Read Only, No Access)

Optional Advanced Share Permissions (simple R/W/RO matrix)

No Windows ACL

No Traverse

No NTFS-style permission matrix

No "Access to root folder" toggle under User → Applications

This means:

File Station visibility is not controlled by ACL.

File Station visibility is controlled by view mode (Shared Folder View vs Home View).

SMB access is controlled only by basic permissions.

4. Why File Station Didn’t Show cloudvault

File Station was stuck in Home View, which only shows:

home
homes

Your NAS does not expose a root-folder-access toggle, so the only way to reveal shared folders is:

Expanding the left sidebar

Switching into Shared Folder View

Once File Station refreshed into Shared Folder View, cloudvault appeared under nasty, confirming:

The folder exists

Permissions are correct

The UI was the only blocker

5. SMB Access Began Working

Once permissions were corrected and the folder existed, SMB access via Windows File Explorer began working:

\\nasty\cloudvault

This confirmed:

The share was properly created

Your user had correct basic permissions

No ACL layer was needed

6. Cloud Sync Configuration Confusion

You wanted:

All Google Drive data downloaded

No deletions on the NAS

No uploads back to Google Drive

A one-way archive, not a mirror

Your Cloud Sync UI did not show the option:

"Delete local files when remote files are deleted"

This is because DS223 uses the simplified Cloud Sync engine, which:

Does not expose deletion toggles

Has fixed behavior per sync direction

Correct interpretation for your model:

Download remote changes only means:

Downloads everything from Google Drive

Updates changed files

Never deletes local files

Never uploads anything

This is exactly the behavior you want.

7. Final Correct Cloud Sync Settings

Local path: /cloudvault

Remote path: Google Drive root (or chosen folder)

Sync direction: Download remote changes only

Encryption: Off

Advanced consistency check: Optional

This produces a safe, one-way archive of all Google Drive data.

8. Final State (Everything Working)

File Station now shows cloudvault under nasty.

SMB access works.

Permissions are correct for your DS223 model.

Cloud Sync can now target /cloudvault.

You have the correct one-way ingest configuration.

Your system is now in the correct, stable, expected state.

9. Key Lessons from This Session

DS223 does not support Windows ACL → no Traverse, no ACL editor.

File Station visibility depends on view mode, not permissions.

Cloud Sync on DS223 uses simplified behavior → no deletion toggle.

"Download remote changes only" is the correct one-way ingest mode.

If you want, I can also generate a clean, Logseq-ready version of this recap or a technical SOP for future rebuilds.

