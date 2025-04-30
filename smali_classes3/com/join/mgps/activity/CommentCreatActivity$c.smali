.class Lcom/join/mgps/activity/CommentCreatActivity$c;
.super Ljava/lang/Object;
.source "CommentCreatActivity.java"

# interfaces
.implements Lcom/join/mgps/Util/z$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentCreatActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentCreatActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentCreatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity$c;->a:Lcom/join/mgps/activity/CommentCreatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity$c;->a:Lcom/join/mgps/activity/CommentCreatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
