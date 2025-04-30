.class public Lcom/join/mgps/Util/i0;
.super Ljava/lang/Object;
.source "ForumUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/i0$j;,
        Lcom/join/mgps/Util/i0$i;,
        Lcom/join/mgps/Util/i0$k;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field static b:Ljava/lang/String; = "i0"

.field public static c:I = 0x124f80

.field public static d:I = 0xa

.field public static e:I = 0x6

.field public static f:I = 0x2

.field public static g:J = 0x4ccccL

.field public static h:J = 0x19999L

.field public static i:Landroid/graphics/Bitmap$CompressFormat; = null

.field public static j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/Util/i0$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/join/mgps/Util/i0;->i:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x6

    .line 2
    sput v0, Lcom/join/mgps/Util/i0;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/join/mgps/dto/ForumBean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static A0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->M2(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    move-result-object p0

    const-string v0, "key_forum_reply_bean"

    invoke-virtual {p0, v0, p3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    const-string p3, "key_forum_comment_bean"

    invoke-virtual {p0, p3, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    const-string p2, "key_forum_post_bean"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static A1(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p0, v0, p1}, Lcom/join/mgps/Util/i0;->z1(Landroid/widget/TextView;ILandroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumExtBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/join/mgps/dto/ForumBean$ForumExtBean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static B0(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity_$y;->a(I)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const-string v4, "praise"

    .line 2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_3

    const-string v4, "bestanswer"

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "best"

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "comment"

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const p1, 0x7f110278

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v6

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v4, "reply"

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f11027a

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object p3, v4, v1

    .line 8
    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    aput p3, v2, v6

    .line 10
    aget p3, v2, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p3, p2

    aput p3, v3, v6

    goto :goto_1

    :cond_2
    const-string p1, ""

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x7f110279

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v6

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_1
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    :goto_2
    const/16 v0, 0x21

    if-ge p3, v1, :cond_4

    .line 13
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string v7, "#2a72cb"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget v7, v2, p3

    aget v8, v3, p3

    invoke-virtual {p2, v4, v7, v8, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    const-string p3, "#*#"

    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f080976

    invoke-static {p3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 16
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const-string p3, "#\\*#"

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 18
    array-length v4, p3

    if-le v4, v1, :cond_5

    .line 19
    aget-object v4, p3, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aget-object v7, p3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    aget-object v7, p3, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    aget-object v6, p3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p2, v3, v4, v7, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 20
    array-length v3, p3

    if-le v3, v5, :cond_5

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 22
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 23
    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    aget-object v4, p3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    aget-object p3, p3, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p2, v3, v2, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 24
    :cond_5
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static C(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;

    return-object p0
.end method

.method public static C0(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity_$y;->a(I)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static C1(Landroid/widget/ImageView;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/i0$e;

    invoke-direct {v0, p2, p1}, Lcom/join/mgps/Util/i0$e;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static D(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;

    return-object p0
.end method

.method public static D0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/ForumTopicActivity_;->Q1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumTopicActivity_$m;

    move-result-object p0

    const-string v0, "key_forum_topic_bean"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumTopicActivity_$m;

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumTopicActivity_$m;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static E(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;

    return-object p0
.end method

.method public static E0(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static E1(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/i0$b;

    invoke-direct {v0, p1}, Lcom/join/mgps/Util/i0$b;-><init>(Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static F(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    return-object p0
.end method

.method public static F0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HomePopupAdActivity_;->K0(Landroid/content/Context;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HomePopupAdActivity_$c;->a(Ljava/lang/String;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static F1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/i0$a;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/Util/i0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static G(Ljava/lang/String;)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    return-object p0
.end method

.method public static G0(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static G1(Landroid/content/Context;I)V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "\u6700\u597d\u7528\u7684\u8054\u673a\u6a21\u62df\u5668"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, ""

    invoke-static {v3}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "/forum/posts/share_detail?pid=%d&device_id=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 12
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method public static H(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    return-object p0
.end method

.method public static H0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public static H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 13

    const-string v0, ""

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    const-string v2, "\u6700\u597d\u7528\u7684\u8054\u673a\u6a21\u62df\u5668"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/HtmlDocUtil;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/HtmlDocUtil;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v0

    move-object v8, v2

    const/4 v7, 0x0

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 6
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    sget-object v11, Lcom/join/mgps/Util/i0$h;->a:[I

    iget-object v12, v10, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v4, :cond_3

    if-eq v11, v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v10}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 9
    invoke-static {v9}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/join/mgps/Util/HtmlDocUtil$b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual {v10}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v10}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    .line 13
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_6
    move-object v9, v0

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v9, v0

    move-object v8, v2

    move-object v2, v6

    .line 15
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    move-object v2, v8

    .line 16
    :goto_4
    invoke-static {v9}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 17
    new-instance v6, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    :cond_8
    const-string v6, "\u609f\u996d\u6e38\u620f\u5385"

    .line 18
    invoke-virtual {v1, v6}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_9

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_9
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 22
    :cond_a
    invoke-virtual {v1, v9}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "/forum/posts/share_detail?pid=%d&device_id=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setArticleId(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 30
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 32
    invoke-static {p0, v1}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;

    return-object p0
.end method

.method public static I0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tpl_two_position()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static J(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    return-object p0
.end method

.method public static J0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tpl_two_position()I

    move-result v4

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static K(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    return-object p0
.end method

.method public static K0(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->r1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static L(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    return-object p0
.end method

.method public static L0(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method public static M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "copyToClickBoard method called."

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u590d\u5236\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static M0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static N()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v1}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v0

    .line 2
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static N0(Landroid/content/Context;Lcom/join/mgps/dto/OemBean$OemDetailBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/OemDetailActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_oem_detail"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static O(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->SearchListData:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln1/t;->n(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static O0(Landroid/content/Context;Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/SharePostsActivity_;->h1(Landroid/content/Context;)Lcom/join/mgps/activity/SharePostsActivity_$h;

    move-result-object p0

    const-string v0, "key_from_posts_submit_request"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/SharePostsActivity_$h;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_from_class"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/SharePostsActivity_$h;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method private static P(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I
    .locals 9

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {v8, p2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    int-to-float v5, p3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v7, 0x0

    new-instance v8, Lcom/join/mgps/Util/i0$c;

    invoke-direct {v8, v0}, Lcom/join/mgps/Util/i0$c;-><init>([I)V

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 5
    aget p0, v0, v1

    add-int/2addr p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    return p2
.end method

.method public static P0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "\u609f\u996d\u89c6\u9891"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public static Q(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/join/mgps/Util/i0;->P(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I

    return-void
.end method

.method public static Q0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "\u609f\u996d\u89c6\u9891"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public static R(I)Ljava/lang/String;
    .locals 5

    if-gez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x2710

    const-string v2, "."

    if-ge p0, v1, :cond_2

    .line 2
    div-int/lit8 p0, p0, 0x64

    .line 3
    rem-int/lit8 v0, p0, 0xa

    .line 4
    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const v3, 0x186a0

    const-string v4, "W"

    if-ge p0, v3, :cond_3

    .line 6
    div-int/2addr p0, v0

    .line 7
    rem-int/lit8 v0, p0, 0xa

    .line 8
    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const v0, 0xf4240

    if-ge p0, v0, :cond_4

    .line 10
    div-int/2addr p0, v1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, "99W+"

    :goto_0
    return-object p0
.end method

.method public static R0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "http://anv3cjapi.5fun.com/member/vip_view/welfare/nickname"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/i0;->H0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static S(Landroid/graphics/drawable/Drawable;)Landroid/text/style/ImageSpan;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static varargs S0([Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/i0$f;

    invoke-direct {v0}, Lcom/join/mgps/Util/i0$f;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static T0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "http://anv3cjapi.5fun.com/member/vip_view/welfare/vip"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/i0;->H0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static U()Lcom/join/mgps/dto/ResponseDownloadCenterAd;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->DownloadCenterAd:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->y(Ljava/lang/String;)Lcom/join/mgps/dto/ResponseDownloadCenterAd;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static varargs U0([Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static V(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommuityRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v7, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getDeviceid()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getRequesttype()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getSign()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getMessages()Lcom/join/mgps/dto/CommonRequestMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestMessage;->getModeltype()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v9

    invoke-direct {v1, v8}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;-><init>([Ljava/lang/Object;)V

    invoke-direct {v6, p0, v1}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static V0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u609f\u996d\u89c6\u9891"

    .line 5
    :goto_0
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public static W(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setPid(I)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setUid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setToken(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs W0([Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/i0$g;

    invoke-direct {v0}, Lcom/join/mgps/Util/i0$g;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static X(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setRid(I)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setUid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setToken(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static X0(Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setRid(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setPid(I)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setMessage(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setUid(I)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setToken(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Y0(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Z()Ljava/lang/String;
    .locals 1

    const-string v0, "forum_image"

    return-object v0
.end method

.method public static Z0(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MainPos"

    const/4 v3, 0x5

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 8
    sput-boolean p0, Lcom/MApplication;->p:Z

    return-void
.end method

.method static synthetic a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->i1(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static a0()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumIndexBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->z(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static b0(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setPid(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setMessage(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setUid(I)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setImages(Ljava/util/List;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v5, 0x41100000    # 9.0f

    .line 14
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo$GameTagInfo;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->setPid(I)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->setUid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->setToken(Ljava/lang/String;)V

    const-string p0, ""

    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u5df2\u89e3\u7b54"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "#737373"

    const-string v2, "#ffffff"

    .line 3
    invoke-static {p0, v1, v1}, Lcom/join/mgps/Util/h2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/join/mgps/customview/q0;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p0, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d0(Landroid/content/Context;II)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setPid(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setRid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setUid(I)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setToken(Ljava/lang/String;)V

    const-string p0, ""

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setDevice_id(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    .line 6
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "#ffffff"

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07125b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p0, v2, v5}, Lcom/join/mgps/Util/h2;->b(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    new-instance v5, Lcom/join/mgps/customview/q0;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v2, v3}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public static e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setPid(I)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->o0(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setUid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setToken(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Landroid/content/Context;Landroid/text/SpannableStringBuilder;ZLjava/lang/String;)V
    .locals 4

    const v0, 0x3f99999a    # 1.2f

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080699

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ca2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p2, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    new-instance v1, Lcom/join/mgps/customview/r0;

    invoke-direct {v1, p2, v0}, Lcom/join/mgps/customview/r0;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 5
    new-instance p2, Landroid/text/SpannableString;

    const-string v0, "[ask]"

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance p2, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d4f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u94dc\u677f"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string p3, "#F85F45"

    const-string v0, "#ffffff"

    .line 8
    invoke-static {p0, p3, p3}, Lcom/join/mgps/Util/h2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 9
    new-instance p3, Lcom/join/mgps/customview/q0;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p0

    invoke-virtual {p2, p3, v2, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static f0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommuityZoneRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v7, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getDeviceid()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getRequesttype()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getSign()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestBean;->getMessages()Lcom/join/mgps/dto/CommonRequestMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonRequestMessage;->getModeltype()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v9

    invoke-direct {v1, v8}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;-><init>([Ljava/lang/Object;)V

    invoke-direct {v6, p0, v1}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static f1(IZ)V
    .locals 0

    return-void
.end method

.method public static g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x3f99999a    # 1.2f

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f080699

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p3, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    new-instance p0, Lcom/join/mgps/customview/r0;

    invoke-direct {p0, p3, v0}, Lcom/join/mgps/customview/r0;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 8
    new-instance p3, Landroid/text/SpannableString;

    const-string v0, "[ask]"

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-virtual {p3, p0, v1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    new-instance p0, Landroid/text/SpannableString;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8d4f"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\u94dc\u677f"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string p3, "#F85F45"

    const-string p4, "#ffffff"

    .line 11
    invoke-static {p2, p3, p3}, Lcom/join/mgps/Util/h2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 12
    new-instance p3, Lcom/join/mgps/customview/q0;

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p3, p2, p4}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {p0, p3, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static g0()Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->K(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static g1()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumIndexBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v1}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 3
    :cond_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 5
    :cond_1
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendLabel:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    .line 6
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "#ffffff"

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getBorder_color()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v5, v2}, Lcom/join/mgps/Util/h2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    new-instance v5, Lcom/join/mgps/customview/q0;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v2, v3}, Lcom/join/mgps/customview/q0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public static h0()Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendLabel:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->L(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v1}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->J(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;->getFavorites_list()Ljava/util/List;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_5

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v4

    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->s1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 19
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->s1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "#"

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v3

    .line 6
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06031a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    new-instance v4, Lcom/join/mgps/Util/i0$k;

    invoke-direct {v4, v3}, Lcom/join/mgps/Util/i0$k;-><init>(I)V

    .line 10
    invoke-virtual {v4, p3}, Lcom/join/mgps/Util/i0$k;->d(I)V

    .line 11
    invoke-virtual {v4, p4}, Lcom/join/mgps/Util/i0$k;->e(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v5, v4, v1, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static i0(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 5

    const-string v0, "_"

    const-string v1, "_size_"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 5
    array-length v3, p0

    if-le v3, v1, :cond_1

    .line 6
    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    aget-object p0, p0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_2

    .line 8
    array-length v0, p0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v3, p0, v0

    .line 9
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 11
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Integer;

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v2
.end method

.method private static i1(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public static j(IZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v7, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public static k(IZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    if-nez p1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static k0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getLink_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getLink_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getJump_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getJump_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 5
    :goto_1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getTpl_type()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerCellBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k1(Lcom/join/mgps/dto/ResponseDownloadCenterAd;)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->DownloadCenterAd:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :goto_0
    return p1
.end method

.method public static l0()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MG/.cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/join/mgps/Util/i0;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static l1(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->m(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumIndexBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static m(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p0, v0, p5}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-static {p0, v0, p3, p4}, Lcom/join/mgps/Util/i0;->f(Landroid/content/Context;Landroid/text/SpannableStringBuilder;ZLjava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->w(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->r(Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 4
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsPraise:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    return-void
.end method

.method public static n(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 2
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->SearchListData:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->q(Lcom/join/mgps/db/tables/ForumTable;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static n1(Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->s(Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfilePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    return-void
.end method

.method public static o(Lcom/join/mgps/dto/ForumBean;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static o1(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->t(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfileGetUnreadMessageCount:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    return-void
.end method

.method public static p(Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static p1(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->q(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcomePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static q(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "2"

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public static q1(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->v(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static r(Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public static r1(Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendLabel:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static s(Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public static s1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->u(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static t(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/dto/ForumBean;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public static t1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->SearchListData:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln1/t;->t(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static u(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public static u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v3, v1, [I

    .line 3
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    new-array v2, v6, [I

    new-array v3, v6, [I

    const v4, 0x7f110090

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v7

    aput-object p2, v8, v1

    aput-object p3, v8, v6

    .line 4
    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v7

    .line 6
    aget v0, v2, v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    aput v0, v3, v7

    .line 7
    aget p1, v3, v7

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    aget v0, v3, v7

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    aput v0, v2, v1

    .line 9
    aget p1, v2, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, v3, v1

    goto :goto_0

    :cond_0
    const p2, 0x7f11008f

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p3, v4, v1

    .line 10
    invoke-virtual {v0, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    aput p2, v2, v7

    .line 12
    aget p2, v2, v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    aput p2, v3, v7

    .line 13
    :goto_0
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 14
    :goto_1
    array-length v0, v2

    const/16 v4, 0x21

    if-ge p2, v0, :cond_1

    .line 15
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#2a72cb"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget v8, v2, p2

    aget v9, v3, p2

    invoke-virtual {p1, v0, v8, v9, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "#*#"

    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080976

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 18
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const-string p2, "#\\*#"

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 20
    array-length v3, p2

    if-le v3, v1, :cond_2

    .line 21
    aget-object v3, p2, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v7, p2, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v2, v3, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 22
    array-length v2, p2

    if-le v2, v6, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 25
    aget-object v0, p2, v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    aget-object v3, p2, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p3, p2

    add-int/2addr p3, v5

    invoke-virtual {p1, v2, v0, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 26
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static v(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->z4(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    move-result-object p0

    sget-object v0, Lcom/join/mgps/activity/ForumPostsActivity;->k2:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static v1(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x10

    .line 2
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    new-array v5, v4, [I

    new-array v6, v4, [I

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    new-array v5, v9, [I

    new-array v6, v9, [I

    const v7, 0x7f110090

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v1, v11, v10

    aput-object v2, v11, v4

    aput-object p7, v11, v9

    .line 4
    invoke-virtual {v3, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v10

    .line 6
    aget v7, v5, v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    aput v7, v6, v10

    .line 7
    aget v1, v6, v10

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    aget v7, v6, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v7, v1

    aput v7, v5, v4

    .line 9
    aget v1, v5, v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v6, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f11008f

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    aput-object p7, v7, v4

    .line 10
    invoke-virtual {v3, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v10

    .line 12
    aget v2, v5, v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    aput v2, v6, v10

    .line 13
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 14
    :goto_1
    array-length v7, v5

    const/16 v11, 0x21

    if-ge v2, v7, :cond_5

    const-string v7, "#2a72cb"

    .line 15
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v12, "#f6c004"

    const-string v13, "#ff0000"

    if-nez v2, :cond_2

    if-lez p2, :cond_1

    .line 16
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    :cond_1
    if-lez p3, :cond_4

    .line 17
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_2
    if-lez p5, :cond_3

    .line 18
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    :cond_3
    if-lez p6, :cond_4

    .line 19
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 20
    :cond_4
    :goto_2
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget v7, v5, v2

    aget v13, v6, v2

    invoke-virtual {v1, v12, v7, v13, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "#*#"

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080976

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 23
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const-string v2, "#\\*#"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 25
    array-length v7, v2

    if-le v7, v4, :cond_6

    .line 26
    aget-object v7, v2, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 27
    array-length v6, v2

    if-le v6, v9, :cond_6

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 29
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 30
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    aget-object v7, v2, v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v3, v8

    invoke-virtual {v1, v6, v5, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 31
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static w(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->z4(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    move-result-object p0

    sget-object v0, Lcom/join/mgps/activity/ForumPostsActivity;->k2:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static w1(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p5}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-static {p0, v0, p2, p3, p4}, Lcom/join/mgps/Util/i0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static x(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static x1(Landroid/widget/ListView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static y(Ljava/lang/String;)Lcom/join/mgps/dto/ResponseDownloadCenterAd;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ResponseDownloadCenterAd;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ResponseDownloadCenterAd;

    return-object p0
.end method

.method public static y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->u2(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static y1(Landroid/widget/ListView;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v4, 0x0

    .line 4
    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v1, v1, v0

    add-int/2addr v3, v1

    .line 8
    invoke-static {p0, v3}, Lcom/join/mgps/Util/i0;->x1(Landroid/widget/ListView;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static z(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    return-object p0
.end method

.method public static z0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileMessageActivity_$j;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static z1(Landroid/widget/TextView;ILandroid/text/SpannableStringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/Util/i0$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/Util/i0$d;-><init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public a1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/i0$j;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i0$j;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/join/mgps/Util/i0$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/i0$j;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i0$j;->b(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c1(Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/i0$j;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i0$j;->c(Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/i0$j;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i0$j;->d(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e1(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/i0$j;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i0$j;->e(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j1(Lcom/join/mgps/Util/i0$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
