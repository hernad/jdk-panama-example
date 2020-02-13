package ba.out.hello;

import ba.out.hello.helloworld_lib;
import java.foreign.Libraries;
import java.foreign.Scope;

import static ba.out.hello.helloworld_lib.*;

public class HelloWorld {
    public static void main(String[] args) {
        try (Scope s = helloworld_lib.scope().fork()) {
            helloworld();
        }
    }
}
