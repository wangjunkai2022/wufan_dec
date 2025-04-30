.class public Lcom/join/mgps/activity/HandShankSFCActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "HandShankSFCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankSFCActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c006a
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n:Landroid/widget/Button;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/activity/HandShankSFCActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    return-void
.end method

.method private V0()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 3
    iget-object v1, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/join/mgps/joystick/map/b;->h0:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private W0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->k:Landroid/widget/TextView;

    const-string v1, "SFC\u624b\u67c4\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->d:Landroid/widget/Button;

    const-string v1, "SFC_KEY_SELECT"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->e:Landroid/widget/Button;

    const-string v1, "SFC_KEY_START"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->d:Landroid/widget/Button;

    const-string v1, "\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->e:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private X0()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    .line 2
    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f090ed0

    const v4, 0x7f08054f

    const v5, 0x7f080551

    const v6, 0x7f080550

    const v7, 0x7f06014a

    const v8, 0x7f06014c

    const v9, 0x7f06014b

    const v10, 0x7f090ede

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_START"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f090dfd

    const v10, 0x7f090e05

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_SELECT"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f0912e3

    const v4, 0x7f080543

    const v5, 0x7f080545

    const v6, 0x7f080544

    const v10, 0x7f0912e7

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_X"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f090030

    const v10, 0x7f090032

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_A"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f0912fb

    const v10, 0x7f0912fc

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_Y"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f090127

    const v10, 0x7f09012b

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_B"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f09084e

    const v10, 0x7f09084f

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_L"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    new-instance v11, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    const v3, 0x7f090ca8

    const v10, 0x7f090ca9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankSFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSFCActivity;IIIIIIII)V

    const-string v1, "SFC_KEY_R"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->Y0()V

    return-void
.end method

.method private Y0()V
    .locals 11

    const-string v0, "KEY"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lcom/join/mgps/joystick/map/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const-string v1, "KEY_R1"

    const-string v2, "KEY_L1"

    const-string v3, "KEY_B"

    const-string v4, "KEY_Y"

    const-string v5, "KEY_A"

    const-string v6, "KEY_X"

    const-string v7, "KEY_SELECT"

    const-string v8, "KEY_START"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x6c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x6d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x60

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x61

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x66

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x68

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "KEY_L2"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x67

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x69

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "KEY_R2"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    const/16 v9, 0x6b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "KEY_BUTTON_THUMBR"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->V0()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v9, "SFC_KEY_SELECT"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v7, "SFC_KEY_START"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v7, "SFC_KEY_X"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v6, "SFC_KEY_A"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v5, "SFC_KEY_Y"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v4, "SFC_KEY_B"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v3, "SFC_KEY_L"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    const-string v2, "SFC_KEY_R"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private b1(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    sget-object v4, Lcom/join/mgps/joystick/map/b;->h0:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c1()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->s:Z

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v2, "KEY_SELECT"

    const-string v3, "SFC_KEY_SELECT"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v4, "KEY_START"

    const-string v5, "SFC_KEY_START"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v6, "KEY_X"

    const-string v7, "SFC_KEY_X"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v8, "KEY_A"

    const-string v9, "SFC_KEY_A"

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v10, "KEY_Y"

    const-string v11, "SFC_KEY_Y"

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v12, "KEY_B"

    const-string v13, "SFC_KEY_B"

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    const-string v14, "KEY_L1"

    const-string v15, "SFC_KEY_L"

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    move-object/from16 v16, v14

    const-string v14, "KEY_R1"

    move-object/from16 v17, v15

    const-string v15, "SFC_KEY_R"

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 12
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    iget-object v4, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 26
    iget v4, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->h:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget v3, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->a:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget v4, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->b:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 28
    iget v3, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    if-eqz v3, :cond_0

    .line 29
    iget v3, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->a:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v2, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/join/mgps/activity/HandShankSFCActivity;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/joystick/map/d;->o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 31
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private e1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget v3, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->a:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 9
    iget v4, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 11
    :cond_0
    iget v4, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->d:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 12
    iget v2, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->h:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-static {v4, v1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    iget v1, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->a:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 14
    iget v3, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 16
    :cond_2
    iget v2, v2, Lcom/join/mgps/activity/HandShankSFCActivity$a;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private f1()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    .line 18
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 7
    iget v1, v1, Lcom/join/mgps/activity/HandShankSFCActivity$a;->h:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected L0(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/papa/controller/core/PadKeyEvent;->d()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->N0(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankSFCActivity;->a1(ILandroid/view/KeyEvent;)Z

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    move-result p1

    return p1
.end method

.method U0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->s:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->f1()V

    .line 6
    :cond_1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HandShankSFCActivity;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/join/mgps/joystick/map/d;->o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a1(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    return v2

    :cond_1
    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 10
    iget v0, v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;->h:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->q:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 14
    iget v0, v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;->h:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->s:Z

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    iget p1, p1, Lcom/join/mgps/activity/HandShankSFCActivity$a;->d:I

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->e1()V

    :cond_5
    return v2

    .line 21
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method afterViews()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->X0()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->W0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->initView()V

    return-void
.end method

.method d1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSFCActivity;->c1()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    iget v2, v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 7
    iget v0, v0, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 9
    :cond_1
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->r:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankSFCActivity$a;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    iget v1, p1, Lcom/join/mgps/activity/HandShankSFCActivity$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 12
    iget p1, p1, Lcom/join/mgps/activity/HandShankSFCActivity$a;->e:I

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankSFCActivity;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    return-void
.end method
