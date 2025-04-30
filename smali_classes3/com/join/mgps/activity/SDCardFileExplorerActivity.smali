.class public Lcom/join/mgps/activity/SDCardFileExplorerActivity;
.super Lcom/BaseActivity;
.source "SDCardFileExplorerActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0569
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Ljava/io/File;

.field e:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/SDCardFileExplorerActivity;[Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->F0([Ljava/io/File;)V

    return-void
.end method

.method private F0([Ljava/io/File;)V
    .locals 8

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    const-string v3, "filename"

    const-string v4, "iconFile"

    if-ge v0, v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f080426

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const v5, 0x7f080413

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_1
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 10
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4fee\u6539\u65e5\u671f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 13
    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "modify"

    .line 14
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Landroid/widget/SimpleAdapter;

    const v5, 0x7f0c056a

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p1

    move-object v1, p0

    move v3, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->a:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u8def\u5f84\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x7f0904ae
        0x7f090687
    .end array-data
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->d:Ljava/io/File;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->e:[Ljava/io/File;

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->F0([Ljava/io/File;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;-><init>(Lcom/join/mgps/activity/SDCardFileExplorerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SDCardFileExplorerActivity$b;-><init>(Lcom/join/mgps/activity/SDCardFileExplorerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
