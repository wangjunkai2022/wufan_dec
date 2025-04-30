.class Lcom/join/mgps/activity/SharePostsActivity$c;
.super Ljava/lang/Object;
.source "SharePostsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$c;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$c;->a:Lcom/join/mgps/activity/SharePostsActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/join/mgps/activity/SharePostsActivity;->p:I

    return-void
.end method
