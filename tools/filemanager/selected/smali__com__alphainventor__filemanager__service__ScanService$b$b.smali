.class Lcom/alphainventor/filemanager/service/ScanService$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphainventor/filemanager/service/ScanService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/service/ScanService$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/media/MediaScannerConnection;

.field c:I

.field d:Lcom/alphainventor/filemanager/service/ScanService$a;

.field final synthetic e:Lcom/alphainventor/filemanager/service/ScanService$b;


# direct methods
.method constructor <init>(Lcom/alphainventor/filemanager/service/ScanService$b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/service/ScanService$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->a:Ljava/util/List;

    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->b:Landroid/media/MediaScannerConnection;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/alphainventor/filemanager/service/ScanService$b;->l:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->a:Ljava/util/List;

    .line 25
    .line 26
    iget v1, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->c:I

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/alphainventor/filemanager/service/ScanService$a;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->d:Lcom/alphainventor/filemanager/service/ScanService$a;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->b:Landroid/media/MediaScannerConnection;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/alphainventor/filemanager/service/ScanService$a;->a:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->c:I

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    iput v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->c:I

    .line 49
    .line 50
    return-void
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
.end method

.method public onMediaScannerConnected()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->b:Landroid/media/MediaScannerConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/alphainventor/filemanager/service/ScanService$b;->l:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 29
    .line 30
    iget-wide v2, v2, Lcom/alphainventor/filemanager/service/ScanService$b;->m:J

    .line 31
    .line 32
    sub-long/2addr v0, v2

    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    div-long/2addr v0, v2

    .line 36
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lax/sb/b;->g()Lax/sb/b;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "MediaScanner connected after timeout"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "delay:"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/alphainventor/filemanager/service/ScanService$b;->k:Ljava/util/concurrent/CountDownLatch;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/alphainventor/filemanager/service/ScanService$b$b;->a()V

    .line 82
    .line 83
    .line 84
    return-void
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {}, Lax/a3/Q;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->d:Lcom/alphainventor/filemanager/service/ScanService$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/alphainventor/filemanager/service/ScanService$a;->b:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/alphainventor/filemanager/service/ScanService$a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/alphainventor/filemanager/service/ScanService$b$b;->e:Lcom/alphainventor/filemanager/service/ScanService$b;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/alphainventor/filemanager/service/ScanService$b;->i:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1, p2}, Lax/f3/M;->l(Landroid/content/Context;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/alphainventor/filemanager/service/ScanService$b$b;->a()V

    .line 35
    .line 36
    .line 37
    return-void
    .line 38
    .line 39
    .line 40
.end method
