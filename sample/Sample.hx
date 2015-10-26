package sample;

    // 'JF' stands for 'Jeremy Faivre', just to give an example of prefix
@:build(hx2objc.Macros.generate('JFSample'))
@:keep class Sample {

    public function new() {
        //
    }

        // Give names to 'done' callback arguments
        // in order to generate nicer Objective-C interface
    @:describe('done', {callback: ['code', 'response']})
    public function do_something(done:Int->String->Void):Void {
        Sys.println("do_something()");
        done(0, "Just did something");
    }

}
