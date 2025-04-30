.class public Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SettingCheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableListviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;
    }
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marginTop:I

.field private maxHeight:I

.field private minHeight:I

.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/ppsspp/ppsspp/R$dimen;->wdp80:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/ppsspp/ppsspp/R$dimen;->wdp125:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/ppsspp/ppsspp/R$dimen;->wdp14:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_expand_chidren:I

    invoke-virtual {p4, v0, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 2
    new-instance p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;

    invoke-direct {p5, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;)V

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->chidren_item:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->rl_root:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {p4, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    const-string v2, "\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    aget-object v5, v1, p3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    aget-object v5, v1, v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v5, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    invoke-virtual {v1, p3, v2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    invoke-virtual {v1, p3, v2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 22
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :goto_1
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-eqz v2, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 24
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;II)V

    .line 25
    iget-object p1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    iget-object p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_expand_parent:I

    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 2
    new-instance p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;

    invoke-direct {p4, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;)V

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$id;->parent_textview_id:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    .line 4
    sget v1, Lorg/ppsspp/ppsspp/R$id;->parent_image:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 6
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 7
    sget v1, Lorg/ppsspp/ppsspp/R$id;->rl_root:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object v1

    .line 11
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    const-string v3, "\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    aget-object v7, v2, v0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    aget-object v7, v2, v6

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    iget-object v3, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 23
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :goto_1
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 25
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object v3

    iget v3, v3, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 30
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 31
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-eqz p2, :cond_4

    .line 32
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-static {p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$100(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    move-result-object p2

    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->ic_arrow_up:I

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 33
    :cond_4
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-static {p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$200(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    move-result-object p2

    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->ic_arrow_down:I

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
