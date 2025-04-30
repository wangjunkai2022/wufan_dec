.class Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildViewHolder"
.end annotation


# instance fields
.field chidren_item:Landroid/widget/TextView;

.field rl_root:Landroid/widget/RelativeLayout;

.field switchBtn:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field tv_desc:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
