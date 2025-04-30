.class final Lcn/aigestudio/downloader/bizs/a$c;
.super Ljava/lang/Object;
.source "DLCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/bizs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "task_info"

.field static final b:Ljava/lang/String; = "base_url"

.field static final c:Ljava/lang/String; = "real_url"

.field static final d:Ljava/lang/String; = "file_path"

.field static final e:Ljava/lang/String; = "currentBytes"

.field static final f:Ljava/lang/String; = "totalBytes"

.field static final g:Ljava/lang/String; = "file_name"

.field static final h:Ljava/lang/String; = "mime_type"

.field static final i:Ljava/lang/String; = "e_tag"

.field static final j:Ljava/lang/String; = "disposition"

.field static final k:Ljava/lang/String; = "location"

.field static final l:Ljava/lang/String; = "thread_info"

.field static final m:Ljava/lang/String; = "base_url"

.field static final n:Ljava/lang/String; = "start"

.field static final o:Ljava/lang/String; = "end"

.field static final p:Ljava/lang/String; = "id"

.field static final q:Ljava/lang/String; = "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, file_name CHAR, mime_type CHAR, e_tag CHAR, disposition CHAR, location CHAR, currentBytes INTEGER, totalBytes INTEGER)"

.field static final r:Ljava/lang/String; = "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, start BIGINT, end BIGINT, id CHAR)"

.field static final s:Ljava/lang/String; = "DROP TABLE IF EXISTS task_info"

.field static final t:Ljava/lang/String; = "DROP TABLE IF EXISTS thread_info"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
