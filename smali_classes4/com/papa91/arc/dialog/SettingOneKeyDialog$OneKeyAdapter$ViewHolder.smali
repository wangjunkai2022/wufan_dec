.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SettingOneKeyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_key_code:Landroid/widget/ImageView;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

.field tv_key:Landroid/widget/TextView;

.field tv_key_add:Landroid/widget/TextView;

.field tv_name:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
