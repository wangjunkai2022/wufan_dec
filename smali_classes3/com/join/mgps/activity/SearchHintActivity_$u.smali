.class Lcom/join/mgps/activity/SearchHintActivity_$u;
.super Ljava/lang/Object;
.source "SearchHintActivity_.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchHintActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity_$u;->a:Lcom/join/mgps/activity/SearchHintActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_$u;->a:Lcom/join/mgps/activity/SearchHintActivity_;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity;->l1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
