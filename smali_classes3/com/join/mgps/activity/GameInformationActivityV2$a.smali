.class Lcom/join/mgps/activity/GameInformationActivityV2$a;
.super Ljava/lang/Object;
.source "GameInformationActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;->Y0(ILcom/join/mgps/activity/GameInformationActivityV2$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

.field final synthetic b:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->b:Lcom/join/mgps/activity/GameInformationActivityV2;

    iput-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u67e5\u770b\u5168\u90e8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$l;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method
