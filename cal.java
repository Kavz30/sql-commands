package com.company;

import java.util.Scanner;
public class cal {
          int res;
          int num1;
          int num2;
          Scanner sc = new Scanner(System.in);
          /*cal()
          {

          }
          cal(int arg1,int arg2)
        {
            this.num1=arg1;
            this.num2=arg2;
        }*/


        public void add() {
            System.out.println("Addition");
            System.out.println("Enter two number for addition");
            int num1=sc.nextInt();
            int num2=sc.nextInt();
            res=num1+num2;
            System.out.println("Result:" + res);
        }

        public void sub() {
            System.out.println("Subtraction\nEnter two numbers");
            int num1=sc.nextInt();
            int num2=sc.nextInt();

            res = num1 - num2;
            System.out.println("Result:" + res);
        }

        public void mul() {
            System.out.println("Multiplication\nEnter two numbers");
            int num1=sc.nextInt();
            int num2=sc.nextInt();

            res = num1 * num2;
            System.out.println("Result:" + res);
        }

        public void div() {
            System.out.println("Division\nEnter two numbers");
            int num1=sc.nextInt();
            int num2=sc.nextInt();
            res = num1 / num2;
            System.out.println("Result:" + res);
        }

    }

