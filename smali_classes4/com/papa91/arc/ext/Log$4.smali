.class Lcom/papa91/arc/ext/Log$4;
.super Lcom/papa91/arc/ext/DaemonThread;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/Log;->runLogOnProcessErrStream(Ljava/lang/Process;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errStream:Ljava/io/InputStream;

.field final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Process;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/papa91/arc/ext/Log$4;->val$errStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/papa91/arc/ext/Log$4;->val$process:Ljava/lang/Process;

    invoke-direct {p0, p1}, Lcom/papa91/arc/ext/DaemonThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, " dbg: "

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/papa91/arc/ext/Log$4;->val$errStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v6, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9

    if-nez v9, :cond_11

    if-eqz v5, :cond_1

    .line 4
    :try_start_1
    iget-object v9, p0, Lcom/papa91/arc/ext/Log$4;->val$process:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9

    return-void

    :catch_0
    move-exception v9

    .line 5
    :try_start_2
    invoke-static {v9}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9

    .line 6
    :catch_1
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    .line 7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "KEY: "

    .line 9
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9

    const-string v11, "Failed parse: "

    if-eqz v10, :cond_4

    const/4 v10, 0x5

    .line 10
    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v6, :cond_2

    new-array v6, v3, [I

    .line 11
    :cond_2
    array-length v12, v6

    if-ne v7, v12, :cond_3

    .line 12
    array-length v12, v6

    add-int/2addr v12, v3

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_3
    add-int/lit8 v12, v7, 0x1

    .line 13
    :try_start_5
    aput v10, v6, v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_1

    :catch_2
    move-exception v10

    .line 14
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9

    :goto_1
    move v7, v12

    goto :goto_0

    :catch_3
    move-exception v10

    .line 15
    :try_start_7
    invoke-static {v10}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_4
    move-exception v10

    .line 16
    :try_start_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string v10, "KEY_END"

    .line 17
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v6, v2

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v10, "EVENT: "

    .line 18
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v10, :cond_6

    const/4 v10, 0x7

    .line 19
    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_5
    move-exception v10

    .line 20
    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    const-string v10, "BAD_KERNEL"

    .line 21
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 22
    new-instance v9, Lcom/papa91/arc/ext/Log$4$1;

    invoke-direct {v9, p0}, Lcom/papa91/arc/ext/Log$4$1;-><init>(Lcom/papa91/arc/ext/Log$4;)V

    invoke-static {v9}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 23
    :cond_7
    sget-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "Send code: 2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 25
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sput-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 27
    :cond_9
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9

    const-string v12, "::searchDone:"

    if-nez v11, :cond_a

    :try_start_b
    const-string v11, " clocks: "

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "MR["

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_a
    if-nez v10, :cond_b

    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sput-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 30
    :cond_b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    .line 31
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_c
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "Send code: 3"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_d
    if-eqz v10, :cond_e

    .line 33
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/papa91/arc/ext/Log;->lastSearchLog:Ljava/lang/String;

    .line 34
    :cond_e
    sput-object v2, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    const-wide/16 v9, 0x1f4

    .line 35
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_0

    :catch_6
    move-exception v9

    .line 36
    :try_start_c
    invoke-static {v9}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_9

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x1e

    if-le v8, v9, :cond_10

    goto/16 :goto_0

    :catch_7
    :cond_10
    return-void

    :catch_8
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_11
    return-void

    :catch_9
    move-exception v0

    const-string v1, "runLogOnProcessErrStream failed"

    .line 37
    invoke-static {v1, v0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
