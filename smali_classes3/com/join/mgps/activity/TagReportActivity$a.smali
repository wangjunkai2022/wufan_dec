.class Lcom/join/mgps/activity/TagReportActivity$a;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "TagReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagReportActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/join/mgps/dto/TagReportReasonBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagReportActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagReportActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$a;->a:Lcom/join/mgps/activity/TagReportActivity;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TagReportReasonBean;

    const p3, 0x7f091169

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p4, 0x7f0907ea

    .line 3
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/TagReportReasonBean;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TagReportReasonBean;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080595

    goto :goto_0

    :cond_0
    const p1, 0x7f080596

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0354

    return v0
.end method
