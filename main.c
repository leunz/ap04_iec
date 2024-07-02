#include <stdio.h>

int main(){
    float n1,n2,res;
    int op;
    op=n1=n2=res=0;
    
    do{
        
        printf("\n>>> INFORME OS VALORES <<< \n\n");
        
        printf("Informe o primeiro valor: ");
        scanf("%f",&n1);
        printf("Informe o segundo valor: ");
        scanf("%f",&n2);
        
        printf("\n###########################");
        printf("\n******* CALCULADORA ******* \n");
        printf("1. SOMAR \n");
        printf("2. SUBTRAIR \n");
        printf("3. DIVIDIR \n");
        printf("4. MULTIPLICAR \n");
        printf("5. SAIR \n");
        printf("###########################\n\n");
        
        printf("Digite a opção: ");
        scanf("%i",&op);
        printf("\n###########################");
        
        switch(op){
            case 1:
                res=n1+n2;
                printf("\n||||| RESULTADO: %.1f |||||\n",res);
                printf("\n###########################\n");
                break;
            case 2:
                res=n1-n2;
                printf("\n||||| RESULTADO: %.1f |||||\n",res);
                printf("\n###########################\n");
                break;
            case 3:
                res=n1/n2;
                printf("\n|||||> RESULTADO: %.1f ||||| \n",res);
                printf("\n###########################\n");
                break;
            case 4:
                res=n1*n2;
                printf("\n||||> RESULTADO: %.1f <|||| \n",res);
                printf("###########################\n");
                break;
            case 5:
                printf("\n||||| Saindo... \n |||||");
                printf("\n###########################\n");
                break;
                
            default:
                printf("Opção inválida!");
        }
        
        if(op!=5){
        	int continuar;
        	printf("\nDeseja fazer outro cálculo? (1-Sim / 0-Não): ");
        	scanf("%d",&continuar);
        	if(continuar==0){
        		op=5;
        	}
        }
    } while(op!=5);
}
