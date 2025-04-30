.class Lcom/papa91/arc/EmuActivity_psp$17;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->ShowSetNetWorkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp$17;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/ppsspp/ppsspp/R$style;->MyDialog:I

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 3
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->bind_dialog2:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->dialog_button_ok:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    sget v3, Lorg/ppsspp/ppsspp/R$id;->tip_title:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    sget-object v3, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    sget v4, Lorg/ppsspp/ppsspp/R$id;->dialog_content:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    sget-object v4, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    sget v5, Lorg/ppsspp/ppsspp/R$id;->dialog_desci:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 8
    sget-object v5, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    sget-object v5, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v5, "\u63d0\u793a"

    .line 10
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u8bf7\u6821\u9a8c\u4f1a\u5458\u8eab\u4efd\n\u8054\u7f51\u6821\u9a8c\u540e\uff0c\u4f60\u5728\u4e00\u6bb5\u65f6\u95f4\u5185\u53ef\u79bb\u7ebf\u4f7f\u7528\u3002"

    .line 11
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 12
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "\u5f00\u542f\u7f51\u7edc"

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    sget v3, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/papa91/arc/g;->a:Lcom/papa91/arc/g;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v2, Lcom/papa91/arc/EmuActivity_psp$17$1;

    invoke-direct {v2, p0}, Lcom/papa91/arc/EmuActivity_psp$17$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$17;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->isNet:Z

    .line 17
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
