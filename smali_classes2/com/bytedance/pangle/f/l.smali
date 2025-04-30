.class final Lcom/bytedance/pangle/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/f/k;


# static fields
.field private static final a:J


# instance fields
.field private final b:Ljava/io/FileDescriptor;

.field private final c:J

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/pangle/f/l;->a:J

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/f/l;->b:Ljava/io/FileDescriptor;

    .line 3
    iput-wide p2, p0, Lcom/bytedance/pangle/f/l;->c:J

    .line 4
    iput-wide p4, p0, Lcom/bytedance/pangle/f/l;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/pangle/f/l;->d:J

    return-wide v0
.end method

.method public final a(Lcom/bytedance/pangle/f/j;JI)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "java.nio.DirectByteBuffer"

    .line 2
    iget-wide v3, v1, Lcom/bytedance/pangle/f/l;->c:J

    add-long v3, v3, p2

    .line 3
    sget-wide v5, Lcom/bytedance/pangle/f/l;->a:J

    div-long v7, v3, v5

    mul-long v16, v7, v5

    sub-long v3, v3, v16

    long-to-int v4, v3

    add-int v0, p4, v4

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->c()Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/16 v18, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    const-class v0, Landroid/system/OsConstants;

    const-string v9, "MAP_POPULATE"

    invoke-static {v0, v9}, Lcom/bytedance/pangle/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6
    invoke-static {v0, v3}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    .line 9
    sget v13, Landroid/system/OsConstants;->PROT_READ:I

    sget v11, Landroid/system/OsConstants;->MAP_SHARED:I

    or-int v14, v11, v0

    iget-object v15, v1, Lcom/bytedance/pangle/f/l;->b:Ljava/io/FileDescriptor;

    move-wide v11, v5

    invoke-static/range {v9 .. v17}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v9
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v11, 0x18

    const/4 v12, 0x1

    if-lt v0, v11, :cond_1

    const/16 v11, 0x1c

    if-gt v0, v11, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/4 v11, 0x2

    if-eqz v0, :cond_2

    .line 11
    :try_start_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x5

    new-array v13, v2, [Ljava/lang/Class;

    .line 12
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v18

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    const-class v14, Ljava/io/FileDescriptor;

    aput-object v14, v13, v11

    const-class v14, Ljava/lang/Runnable;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x4

    aput-object v14, v13, v16

    .line 13
    invoke-static {v0, v13}, Lcom/bytedance/pangle/a/a/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v13

    if-eqz v13, :cond_3

    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v18

    int-to-long v13, v4

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v12

    iget-object v4, v1, Lcom/bytedance/pangle/f/l;->b:Ljava/io/FileDescriptor;

    aput-object v4, v2, v11

    aput-object v3, v2, v15

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    move-object v3, v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 16
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_6
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 21
    :cond_2
    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Class;

    .line 22
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v2, v18

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v2, v12

    .line 23
    invoke-static {v0, v2}, Lcom/bytedance/pangle/a/a/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v11, [Ljava/lang/Object;

    int-to-long v13, v4

    add-long/2addr v13, v9

    .line 25
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v18

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_7
    move-exception v0

    .line 26
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_8
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_9
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_4

    :catch_a
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_b
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_3
    :goto_4
    move-object/from16 v2, p1

    .line 31
    invoke-interface {v2, v3}, Lcom/bytedance/pangle/f/j;->a(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    cmp-long v0, v9, v7

    if-eqz v0, :cond_4

    .line 32
    :try_start_8
    invoke-static {v9, v10, v5, v6}, Landroid/system/Os;->munmap(JJ)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_c

    :catch_c
    :cond_4
    return-void

    :catch_d
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide v9, v7

    goto :goto_6

    :catch_e
    move-exception v0

    move-wide v9, v7

    .line 33
    :goto_5
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to mmap "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :goto_6
    cmp-long v2, v9, v7

    if-eqz v2, :cond_5

    .line 34
    :try_start_a
    invoke-static {v9, v10, v5, v6}, Landroid/system/Os;->munmap(JJ)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_f

    .line 35
    :catch_f
    :cond_5
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
