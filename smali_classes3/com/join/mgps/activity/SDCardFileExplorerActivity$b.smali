.class Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;
.super Ljava/lang/Object;
.source "SDCardFileExplorerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SDCardFileExplorerActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SDCardFileExplorerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/mnt/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->E0(Lcom/join/mgps/activity/SDCardFileExplorerActivity;[Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
