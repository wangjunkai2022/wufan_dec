.class Lcom/join/mgps/activity/SearchListActivity1$b;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$b;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$b;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1;->search()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
