.class public Lcom/xinzhu/overmind/server/am/b;
.super Landroid/os/Binder;
.source "ActivityRecord.java"


# instance fields
.field public component:Landroid/content/ComponentName;

.field public finished:Z

.field public info:Landroid/content/pm/ActivityInfo;

.field public intent:Landroid/content/Intent;

.field public launchedFromPackage:Ljava/lang/String;

.field public launchedFromUid:I

.field public processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

.field public resultTo:Landroid/os/IBinder;

.field public task:Lcom/xinzhu/overmind/server/am/h;

.field public token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "info",
            "resultTo",
            "userId",
            "launchedFromPackage",
            "launchedFromUid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/am/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/b;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    .line 3
    iput-object p1, v0, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    .line 4
    new-instance p0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 5
    iput-object p2, v0, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    .line 6
    iput p3, v0, Lcom/xinzhu/overmind/server/am/b;->userId:I

    .line 7
    iput-object p4, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromPackage:Ljava/lang/String;

    .line 8
    iput p5, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromUid:I

    return-object v0
.end method
