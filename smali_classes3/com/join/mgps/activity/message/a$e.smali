.class Lcom/join/mgps/activity/message/a$e;
.super Ljava/lang/Object;
.source "CommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/a;->Z(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/message/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/a;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$e;->c:Lcom/join/mgps/activity/message/a;

    iput p2, p0, Lcom/join/mgps/activity/message/a$e;->a:I

    iput p3, p0, Lcom/join/mgps/activity/message/a$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$e;->c:Lcom/join/mgps/activity/message/a;

    iget-object p1, p1, Lcom/join/mgps/activity/message/a;->u:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$e;->c:Lcom/join/mgps/activity/message/a;

    iget-object v0, p1, Lcom/join/mgps/activity/message/a;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/message/a$e;->a:I

    iget v2, p0, Lcom/join/mgps/activity/message/a$e;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/message/a;->U(Ljava/lang/String;II)V

    return-void
.end method
