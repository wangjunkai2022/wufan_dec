.class public Lcom/join/mgps/customview/CloudBackupButn;
.super Landroid/widget/LinearLayout;
.source "CloudBackupButn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CloudBackupButn$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CloudBackupButn;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CloudBackupButn;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CloudBackupButn;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00e1

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0903b5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setStatu(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u5907\u4efd\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u5df2\u5907\u4efd"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u5907\u4efd"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u4e0a\u4f20\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :pswitch_6
    iget-object p1, p0, Lcom/join/mgps/customview/CloudBackupButn;->a:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
