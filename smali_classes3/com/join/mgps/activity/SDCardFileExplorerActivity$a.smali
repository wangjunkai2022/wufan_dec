.class Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;
.super Ljava/lang/Object;
.source "SDCardFileExplorerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/math/BigDecimal;

    iget-object p4, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p4, p4, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    aget-object p4, p4, p3

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide p4

    invoke-direct {p1, p4, p5}, Ljava/math/BigDecimal;-><init>(J)V

    .line 3
    new-instance p4, Ljava/math/BigDecimal;

    const/high16 p5, 0x100000

    invoke-direct {p4, p5}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 p5, 0x2

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p4, p5, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const/high16 p4, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    const-string p3, "\u4e3a\u4e86\u4f60\u7684\u6d41\u91cf\uff0c\u4e0a\u4f20\u6587\u4ef6\u4e0d\u80fd\u8d85\u8fc7100M\u54e6"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    aget-object p2, p2, p3

    const-string p3, "srcFile"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    const/16 p3, 0x64

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    array-length p4, p1

    if-nez p4, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    iget-object p4, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    aget-object p3, p4, p3

    iput-object p3, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    .line 14
    iput-object p1, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    .line 15
    invoke-static {p2, p1}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->E0(Lcom/join/mgps/activity/SDCardFileExplorerActivity;[Ljava/io/File;)V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->a:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    const-string p3, "\u5f53\u524d\u8def\u5f84\u4e0d\u53ef\u8bbf\u95ee\u6216\u8005\u8be5\u8def\u5f84\u4e0b\u6ca1\u6709\u6587\u4ef6"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
