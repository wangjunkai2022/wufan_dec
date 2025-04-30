.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingOneKeyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeroAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 2

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_mask:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;

    .line 7
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "file://"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gameDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/img/c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 8
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p4, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 10
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 12
    iget-object p4, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget p4, p4, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    if-ne p1, p4, :cond_1

    const p1, 0x3eb33333    # 0.35f

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 14
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 16
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_1
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 18
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey_hero:I

    return v0
.end method
