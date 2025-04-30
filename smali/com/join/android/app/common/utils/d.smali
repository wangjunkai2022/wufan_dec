.class public Lcom/join/android/app/common/utils/d;
.super Ljava/lang/Object;
.source "DimenDPThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/utils/d$a;
    }
.end annotation


# static fields
.field private static b:I = 0x2d0

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/common/utils/d$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0xf0

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x140

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x168

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x180

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x188

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x190

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x19a

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x19b

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x1a4

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x1ae

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x1b0

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x1b8

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x1e0

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x215

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x250

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x258

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x280

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x296

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x2d0

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x300

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x320

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    new-instance v1, Lcom/join/android/app/common/utils/d$a;

    sget v2, Lcom/join/android/app/common/utils/d;->b:I

    const/16 v3, 0x32b

    invoke-direct {v1, v3, v2}, Lcom/join/android/app/common/utils/d$a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/utils/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    const-string v0, "."

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "src/test/res/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/join/android/app/common/utils/d;

    invoke-direct {p0}, Lcom/join/android/app/common/utils/d;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/d;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/d;->b()V

    return-void
.end method

.method private e(Ljava/io/File;Ljava/lang/StringBuffer;Lcom/join/android/app/common/utils/d$a;)V
    .locals 14

    move-object/from16 v0, p2

    const-string v1, "\">"

    const-string v2, "\n"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct {v6, p1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v8, "UTF-8"

    invoke-direct {v5, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 2
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "<resources>\n"

    .line 3
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v5, 0x501

    if-ge v7, v5, :cond_1

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    <dimen name=\"wdp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/d$a;->a(Lcom/join/android/app/common/utils/d$a;)I

    move-result v5

    int-to-double v5, v5

    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/d$a;->b(Lcom/join/android/app/common/utils/d$a;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v8, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v8

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    .line 8
    :try_start_2
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    const/4 v6, 0x2

    .line 9
    invoke-virtual {v10, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "dp</dimen>\n"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v10, 0x5

    if-lt v7, v10, :cond_0

    const/16 v10, 0x32

    if-gt v7, v10, :cond_0

    .line 12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    <dimen name=\"spx_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/d$a;->a(Lcom/join/android/app/common/utils/d$a;)I

    move-result v10

    int-to-double v10, v10

    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/d$a;->b(Lcom/join/android/app/common/utils/d$a;)I

    move-result v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    .line 14
    :try_start_3
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 15
    invoke-virtual {v8, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "sp</dimen>\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 17
    :cond_1
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "    /**********\u5b57\u4f53\u9002\u914d***************/\n"

    .line 18
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "</resources>"

    .line 21
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 23
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    .line 26
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 27
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :goto_4
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "path\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    sget-object v2, Lcom/join/android/app/common/utils/d;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/common/utils/d$a;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/android/app/common/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "values-sw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/join/android/app/common/utils/d$a;->a(Lcom/join/android/app/common/utils/d$a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "dp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5199\u5165\u6587\u4ef6\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "dimen.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 13
    invoke-direct {p0, v3, v0, v2}, Lcom/join/android/app/common/utils/d;->e(Ljava/io/File;Ljava/lang/StringBuffer;Lcom/join/android/app/common/utils/d$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/d;->a:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    sput p1, Lcom/join/android/app/common/utils/d;->b:I

    return-void
.end method
